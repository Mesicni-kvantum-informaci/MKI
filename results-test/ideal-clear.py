# Reading lines from file
with open('system/data/ideal.csv', 'r') as fp:
    lines = fp.readlines()

# Writing lines back to file
with open('system/data/ideal.csv', 'w') as fp:
    for number, line in enumerate(lines):
        if number in [0]: #list of lines to not delete
            fp.write(line)