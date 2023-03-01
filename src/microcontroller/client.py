"""
This module defines the :class:`SerialClient` class, which handles the serial
communication between the microcontroller and the computer.
"""
import usb_cdc
#import asyncio
from utils import ResponsiveDict

class SerialClient:
    """The :class:`SerialClient` class provides a simplified interface for 
    achieving state and data synchronisation between the microcontroller and
    connected computer, through its :meth:`update` method.
    
    :param serial: The serial device instance to use, defaults to usb_cdc.data
    :type serial: _type_, optional
    :param buf_out_size: Size of output buffer, in bytes, defaults to 1024
    :type buf_out_size: int, optional
    :param read_timeout: Read timeout period, specifying how long to read 
        the serial line, before yielding to a write operation, defaults to
        0.01s
    :type timeout: float, optional
    :param write_timeout: Write timeout period, specifying the maximum
        time to spend writing a message on the serial line, before yielding
        to a read operation, defaults to 0.015s
    :type write_timeout: float, optional
    """

    # Attributes

    serial = usb_cdc.data
    """The serial device the object is using
    """

    buf_out_bytes_free = 1024
    """Number of free bytes available to write to in 
    :attr:`SerialClient.buf_out`
    """

    buf_out = None
    """Output buffer for storing messages to be sent over the serial line
    """

    buf_in = None
    """Input buffer for storing messages received over serial line
    """


    def __init__(self, serial=serial, buf_out_size=buf_out_bytes_free,
                 read_timeout=0.01, write_timeout=0.015):
        """Create a new :class:`SerialClient` instance.
        """
        self.serial = serial
        self.serial.timeout = read_timeout
        self.serial.write_timeout = write_timeout
        
        self.buf_in = []
        self.buf_out = bytearray(buf_out_size)
        
        self.buf_out_bytes_free = buf_out_size

    def write(self, data):
        """Perform an immediate write of ``data`` to the serial line,
        bypassing data in :attr:`SerialClient.buf_out`.

        :param data: Byte-encoded message to be written to the serial line
        :type data: bytes
        :return: Status code indicating the number of bytes written
        :rtype: int
        """
        return self.serial.write(data)
        
    def update(self):
        """
        Perform a read/write operation on the serial line, reading any
        data sent from the computer into :attr:`SerialClient.buf_in` and
        writing data in :attr:`SerialClient.buf_out` out to the computer.
        """
        if self.serial.in_waiting > 0:
            msg = self.serial.readline()
            # Did we timeout whilst reading part of a message?
            if (len(msg) > 0 and msg.count(b'\n') < 1): 
                msg += self.serial.readline() # Finish reading
                self.buf_in.append(msg)
        mv = memoryview(self.buf_out)
        self.buf_out_bytes_free += self.write(mv[self.buf_out_bytes_free:])