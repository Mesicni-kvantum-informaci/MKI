def sumif(x1, x2, x3, x4, x5, x6):
    operation = []
    if type(x1)==int:
        operation.append(x1)
    if type(x2)==int:
        operation.append(x2)
    if type(x3)==int:
        operation.append(x3)
    if type(x4)==int:
        operation.append(x4)
    if type(x5)==int:
        operation.append(x5)
    if type(x6)==int:
        operation.append(x6)
    print(sum(operation))

sumif(1, 2, 3, 4, 5, 6)
