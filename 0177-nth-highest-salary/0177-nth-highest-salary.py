import pandas as pd

def nth_highest_salary(employee: pd.DataFrame, N: int) -> pd.DataFrame:
    panda_sorte = employee['salary'].drop_duplicates().sort_values(ascending=False)
    #panda_sorte.sort_index()
    if len(panda_sorte)<N or N<=0 :
        return pd.DataFrame({"getNthHighestSalary("+str(N)+ ")" : [None]})
    n_thvalue = panda_sorte.iloc[N-1]
    #print(n_thvalue)
    highet=pd.DataFrame({"getNthHighestSalary("+str(N)+ ")" : [n_thvalue]})
    return highet