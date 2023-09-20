number,exponent = (input()).split()

power = 1
number = int(number)
exponent = int(exponent)
for i in range(1, exponent + 1):
    power = power * number
    
print((power))