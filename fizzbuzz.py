#!/usr/bin/python
limit = 1000
for count in range(0, limit + 1):
    fizz = count % 3
    buzz = count % 5
    msg = str(count)
    if fizz == 0:
        msg = msg + " Fizz"
    if buzz == 0:
        msg = msg + " Buzz"
    print(msg)
