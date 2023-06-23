import csv


# Reading data form csv file
dict_list = []

with open('results.csv', 'r') as data:
  for line in csv.DictReader(data):
      dict_list.append(line)


# Converting str to int for %, #, sum
type_corrections = ['Procento', 'Hashtag', 'Celkem']
for correction in type_corrections:
  for dict in dict_list:
    dict[correction] = int(dict[correction])


# Dictionary sorting first - points, second - name
dict_list = sorted(dict_list, key = lambda user: user['Jmeno'])
dict_list = sorted(dict_list, key = lambda user: user['Celkem'], reverse=True)

print(dict_list)