import pandas as pd

def order_scores(scores: pd.DataFrame) -> pd.DataFrame:
    # using rank method with dense (like the rank increases with 1 by incrementing between groups)
    scores['rank'] = scores['score'].rank(method= 'dense', ascending =False)
    return scores[['score','rank']].sort_values(by='score', ascending = False)
          