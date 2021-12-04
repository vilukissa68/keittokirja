import csv

# Finnish measurements
MEASURES = ['tl', 'dl', 'l', 'g', 'kg', 'rkl', 'kpl']

'''
Return array of tuples [(ingredient, amount)]
'''
path="/home/vaino/keittokirja/tex/lihapullat_ruotsi/ainekset.csv"

def readData(path):
    with open(path, 'r', newline='') as file:
        reader = csv.reader(file, delimiter=';')
        ingredients = list(map(tuple, reader))
        return ingredients


'''
Separate the amount and measurement from each others
'''
def formatAmount(amount):
    a = 0 # Amount
    m = '' # Measurement
    for measurement in MEASURES:
        if measurement in amount:
            m = measurement
            a = amount.replace(measurement, '')
            return m, a
    # Amount is a pure string like maun mukaan
    m = amount
    return m, 0


'''
Takes list of tuples that specify ingredient and the amount formats it to latex
'''
def formatToLatex(ingredients):
    rows = []
    for entry in ingredients:
        ingredient = entry[0]
        measurement, amount = formatAmount(entry[1])
        if amount != 0:
            latex_string = r"%s & \unit[%s]{%s}\\" % (ingredient, amount, measurement)
        else:
            latex_string = r"%s & \unit{%s}\\" % (ingredient, measurement)
        latex_string += "\n"
        rows.append(latex_string)
    return rows

'''
Takes list of tuples that specify ingredient and the amount return formatted raw data
'''
def formatToData(ingredients):
    return_array = []
    for entry in ingredients:
        ingredient = entry[0]
        measurement, amount = formatAmount(entry[1])
        if amount != 0:
            entry = (ingredient, measurement, amount)
        else:
            entry = (ingredient, measurement, 0)
        return_array.append(entry)
    return return_array


'''
Save latex to .tex file in correct directory
'''

def saveLatex(data, path):
    with open(path, 'w') as file:
        for row in data:
            file.write(row)


'''
Reads csv of ingredients and generated latex recipe file based on it
'''
def generateLatexIngredients(path):
    data = formatToLatex(readData(path))
    # Remove .csv file ending from path and replace with .tex
    path = path.replace(".csv", ".tex")
    saveLatex(data, path)


'''
Reads csv of ingredients and formats them correctly and return raw data
'''
def generateIngredients(path):
    data = formatToData(readData(path))
    return data


if __name__ == "__main__":
    print(generateIngredients(path))
