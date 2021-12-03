import csv


def readData(path):
    with open(path, newline='') as file:
        reader = csv.reader(path, delimiter=';')
        for row in reader:
 2
