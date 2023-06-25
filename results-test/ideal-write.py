import csv

# Vars init
u1 = input('U1: ')
u2 = input('U2: ')
u3 = input('U3: ')
a = input('A: ')
k = input('K: ')
b = input('B: ')

nums = [int(u1), int(u2), int(u3), int(a), int(k), int(b)]

ideal_dict = dict({'U1': u1, 'U2': u2, 'U3': u3, 'A': a, 'K': k, 'B': b})

ideal_dict['Procento'] = 100
ideal_dict['Hashtag'] = 100
ideal_dict['Celkem'] = sum (nums)

# Writing to csv
field_names = ['U1', 'U2', 'U3', 'A', 'K', 'B', 'Procento', 'Hashtag', 'Celkem']

with open('system/data/ideal.csv', 'a', encoding='utf-8') as ideal:
    dictwriter_object = csv.DictWriter(ideal, fieldnames=field_names)
    dictwriter_object.writerow(ideal_dict)
