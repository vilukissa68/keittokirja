import pandas as pd
import pathlib
from fuzzywuzzy import fuzz, process
from generate_ingredients import generateIngredients

 # File paths

path="/home/vaino/keittokirja/tex/lihapullat_ruotsi/ainekset.csv"

current_dir = pathlib.Path(__file__).parent.absolute()
root = current_dir.parents[0]
data_dir = root / "data"

path_id = data_dir / "food.csv"



def readRawData(path):
    raw = pd.read_csv(path, sep=';', encoding='latin1')
    foodname_df = raw.loc[raw['FOODTYPE'] == "FOOD"] # Filter on ingredients
    print(foodname_df.head())
    return foodname_df

def findItemWithName(name, df):
    # Choose scoring method based on the number of words in the name
    if(len(name.split()) > 1):
        search = process.extract(name, df['FOODNAME'],limit=10, scorer=fuzz.token_set_ratio)
    else:
        search = process.extract(name, df['FOODNAME'],limit=10, scorer=fuzz.token_sort_ratio)
    print(search[0])
    row = df.loc[df['FOODNAME'] == search[0][0]]
    return row


def generateFoodData(ingredients):
    # Read food data
    foodname_df = readRawData(path_id)

    # Match ingredients to food data 
    items = []
    for ingredient in ingredients:
        print(ingredient)
        # Ignore unquantifiable ingredients
        if (ingredient[2] == 0):
            continue
        if (ingredient[1] in ['tl']):
            continue
        item = findItemWithName(ingredient[0], foodname_df)
        items.append(item)

    # Construct dataframe from items
    items_df = pd.concat(items)
    print(items_df)


if __name__ == '__main__':
    ingredients = generateIngredients(path)
    generateFoodData(ingredients)
