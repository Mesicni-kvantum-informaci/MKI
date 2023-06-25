import csv
from csv import DictWriter
import subprocess


# Ideal points init
ideal_dict = []

with open('system/data/ideal.csv', 'r') as data:
    for line in csv.DictReader(data):
        ideal_dict.append(line)

ideal_dict = ideal_dict[0]

ideal_dict['Jmeno'] = 'Student Pilný'
ideal_dict['Trida'] = 'MKi'

# Number of entries
n = input('Počet Řešitelů: ')

for i in range(1, int(n)+1):
    # Vars init
    Name = input('Jméno: ')
    Class = input('Třída: ')

    u1 = input('U1: ')
    u2 = input('U2: ')
    u3 = input('U3: ')
    a = input('A: ')
    k = input('K: ')
    b = input('B: ')


    # Conditional summation
    temp = dict({'U1': u1, 'U2': u2, 'U3': u3, 'A': a, 'K': k, 'B': b})

    def int_test(var):
        if var.isnumeric():
            return(1)
        else:
            return(0)

    int_output = dict({'U1': int_test(u1), 'U2': int_test(u2), 'U3': int_test(u3), 'A': int_test(a), 'K': int_test(k), 'B': int_test(b),})

    int_keys = [k for k,v in int_output.items() if v == 1]

    integers = [temp[key] for key in int_keys]

    for i in range(0, len(integers)):
        integers[i]=int(integers[i])

    int_sum = sum(integers)


    ideal_correspoding_ints = [ideal_dict[key] for key in int_keys]

    for i in range(0, len(ideal_correspoding_ints)):
        ideal_correspoding_ints[i]=int(ideal_correspoding_ints[i])

    ideal_corresponding_sum = sum(ideal_correspoding_ints)


    # Percent calculation
    percent = int(round(100*int_sum/ideal_corresponding_sum, 0))


    # Hashtag calculation
    tag = int(round(100*int_sum/int(ideal_dict['Celkem']), 0))


    # Writing to csv
    Dict = dict({'Jmeno': Name, 'Trida': Class, 'U1': u1, 'U2': u2, 'U3': u3, 'A': a, 'K': k, 'B': b, 'Procento': percent, 'Hashtag': tag, 'Celkem': int_sum})

    field_names = ['Jmeno', 'Trida', 'U1', 'U2', 'U3', 'A', 'K', 'B', 'Procento', 'Hashtag', 'Celkem']

    with open('system/data/results.csv', 'a', encoding='utf-8') as results:
        dictwriter_object = DictWriter(results, fieldnames=field_names)
        dictwriter_object.writerow(Dict)

    # Incrementing i
    i+=1

    # Better UI
    print()

# Running result-gen python file
subprocess.run(['python', 'system/results-gen.py'])