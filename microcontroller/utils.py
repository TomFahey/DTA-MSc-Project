import time

def timeit(func, args):
    startTime = time.monotonic_ns()
    func(args)
    return round((time.monotonic_ns()-startTime)/1e9, 1)

def timeit_ms(func, args):
    startTime = time.monotonic_ns()
    func(args)
    return round((time.monotonic_ns()-startTime)/1e6, 1)