.. _ref_micro_client:

client
------

.. py:module:: client
   :synopsis: Defines the :class:`SerialClient` class, responsible for 
       handling communication between microcontroller and computer

   This module defines the :class:`SerialClient` class, which is responsible
   for handling serial communication between the microcontroller and the
   python code running on the connected small board computer.

   .. py:class:: SerialClient(serial=usb_cdc.data, buf_out_size=1024,
      read_timeout=0.01, write_timeout=0.015)

      :param serial: The serial device instance to use, defaults to
          :data:`usb_cdc.data`
      :type serial: :class:`serial.Serial`
      :param buf_out_size: Size of output buffer in bytes, defaults to 1024
      :type buf_out_size: int
      :param read_timeout: Read timeout period, specifying how long to read
          the serial line, before yielding to a write operation, defaults to
          0.01s
      :type read_timeout: float
      :param write_timeout: Write timeout period, specifying how long to spend
          writing to the serial line, before yielding to a read operation,
          defaults to 0.015s
      :ivar serial: The serial device the object is using
      :type serial: :class:`serial.Serial`
      :ivar buf_out_bytes_free: Number of free bytes available to write to in
          :attr:`buf_out`
      :type buf_out_bytes_free: int
      :ivar buf_in: Input buffer for storing messages received over serial line
      :type buf_in: :class:`bytearray`
      :ivar buf_out: Output buffer for storing messages to be sent over serial
          line
      :type buf_out: :class:`bytearray`

      **Methods**:

      .. py:method:: SerialClient.write(data)

         Perform an immediate write of ``data`` to the serial line,
         bypassing data in :attr:`SerialClient.buf_out`

         :param data: Byte-encoded message to be written to the serial line
         :type data: bytes
         :return: Status code indicating the number of bytes written
         :rtype: int

      .. py:method:: SerialClient.update()

         Perform a read/write operation on the serial line, reading any
         data sent from the computer into :attr:`SerialClient.buf_in` and
         writing data in :attr:`SerialClient.buf_out` out to the computer.

Code listing
^^^^^^^^^^^^

.. literalinclude:: ./../../../../src/microcontroller/client.py
   :language: python