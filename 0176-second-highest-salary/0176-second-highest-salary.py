import pandas as pd

def second_highest_salary(employee: pd.DataFrame) -> pd.DataFrame:
    unique_salarie= employee['salary'].drop_duplicates().sort_values(ascending=False)
    if len(unique_salarie)<2:
        return pd.DataFrame({'SecondHighestSalary':[None]})
    second_highest= unique_salarie.iloc[1]
    second = pd.DataFrame({'SecondHighestSalary' : [second_highest]})
    return second