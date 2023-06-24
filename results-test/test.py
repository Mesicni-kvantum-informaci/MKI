list = [[2, 3], [4, 5]]
test = 3

if any(test in sub for sub in list):
    print('succes')
else:
    print('fail!')