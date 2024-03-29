import pandas as pd

# Creating data using dictionaries
data = {
    'Name': ['Alice', 'Bob', 'Charlie', 'David'],
    'Age': [25, 30, 35, 40],
    'City': ['New York', 'San Francisco', 'Los Angeles', 'Chicago']
}

# Creating a DataFrame from the dictionary
df = pd.DataFrame.from_dict(data)

# Displaying the DataFrame
print("Created dataframe")
print(df)

# Export as CSV
df.to_csv("data.csv")


# Import CSV
df = pd.read_csv("data.csv")
print("\nCSV file")
print(df)





