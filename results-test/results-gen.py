import csv

# const init
a = ' & '

# Reading data from results csv file
dict_list = []

with open('results.csv', 'r', encoding='utf-8') as data:
  for line in csv.DictReader(data):
      dict_list.append(line)

# Reading data from ideal csv file
ideal_dict = []

with open('ideal.csv', 'r') as data:
    for line in csv.DictReader(data):
        ideal_dict.append(line)

ideal_dict = ideal_dict[0]

ideal_dict['Jmeno'] = 'Student Pilný'
ideal_dict['Trida'] = 'MKi'


# Converting str to int for %, #, sum
type_corrections = ['Procento', 'Hashtag', 'Celkem']
for correction in type_corrections:
  for dictt in dict_list:
    dictt[correction] = int(dictt[correction])


# Dictionary sorting first - points, second - name
dict_list = sorted(dict_list, key = lambda user: user['Jmeno'])
dict_list = sorted(dict_list, key = lambda user: user['Celkem'], reverse=True)


# Assigning Poradi values based on previous sorting and Celkem values
for dictt in dict_list:
  same_value_indices = [[dictt['Celkem'], dict_list.index(dictt)] for dictt in dict_list for i in dict_list if dictt['Celkem'] == i['Celkem'] and dict_list.index(i) != dict_list.index(dictt)]

  groups = {}
  for sub_list in same_value_indices:
      if sub_list[0] in groups:
          groups[sub_list[0]].append(sub_list[1])
      else:
          groups[sub_list[0]] = [sub_list[1]]

  grouped_indices = list(groups.values())
  #grouped_indices=[[]]
  #comparison = same_value_indices[0][0]  # set comparison to the first value
  #for x in same_value_indices:
  #  if x[0]==comparison:    # same group
  #    grouped_indices = [-1].append(x[1])
  #  else:                   # comparison value changed -> new group
  #    comparison = x[0]
  #    grouped_indices.append([x[1]])
  if any(dict_list.index(dictt) in sub_list for sub_list in same_value_indices):
      for sub in grouped_indices:
        if dict_list.index(dictt) in sub:
          dictt['Poradi'] = str(min(sub)+1)+'.\,--\,'+str(max(sub)+1)+'.'
  else:
    dictt['Poradi'] = str(dict_list.index(dictt)+1)+'.'
  # Prints dictionary for checking
  print(dictt)

# Writing to LaTeX results file
with open('out/results.tex', 'w', encoding='utf-8') as tex:
  with open('templates/start.txt', 'r', encoding='utf-8') as start:
    for line in start:
      tex.write(line)
  tex.write('\n'+a+str(ideal_dict['Jmeno'])+a+str(ideal_dict['Trida'])+a+str(ideal_dict['U1'])+a+str(ideal_dict['U2'])+a+str(ideal_dict['U3'])+a+str(ideal_dict['A'])+a+str(ideal_dict['K'])+a+str(ideal_dict['B'])+'\\ \\ \,'+a+str(ideal_dict['Procento'])+a+str(ideal_dict['Hashtag'])+a+str(ideal_dict['Celkem'])+'\\\\'+'\n'+'\\hline'+'\n')
  for dictt in dict_list:
    tex.write('\\ \\ \\ '+str(dictt['Poradi'])+a+str(dictt['Jmeno'])+a+str(dictt['Trida'])+a+str(str(dictt['U1']))+a+str(dictt['U2'])+a+str(dictt['U3'])+a+str(dictt['A'])+a+str(dictt['K'])+a+str(dictt['B'])+'\\ \\ \,'+a+str(dictt['Procento'])+a+str(dictt['Hashtag'])+a+str(dictt['Celkem'])+' \\\\'+'\n')
  with open('templates/mid.txt', 'r', encoding='utf-8') as mid:
    for line in mid:
      tex.write(line)
    tex.write('\n')
  # Celková tabulka
  with open('templates/end.txt', 'r', encoding='utf-8') as end:
    for line in end:
      tex.write(line)