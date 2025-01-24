import pandas as pd

def consecutive_numbers(logs: pd.DataFrame) -> pd.DataFrame:
    logs['firstnum'] = logs['num'].shift(1)
    logs['secnum'] = logs['num'].shift(-1)
    filtered = logs.loc[(logs['num']==logs['firstnum']) & (logs['num']==logs['secnum'])]
    #print(filtered)
    final = filtered[['num']].drop_duplicates().rename(columns={'num':'ConsecutiveNums'})
    return final