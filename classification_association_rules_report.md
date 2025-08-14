
## Classification and Association Rules Analysis Report

### Classification:
**Report:**

- Decision Tree Classification:
    - precision: 0.90
    - recall: 0.90
    - f1-score: 0.90 
    - accuracy: 0.93

- KNN Classification:
    - precision: 1.00 
    - recall: 0.90
    - f1-score: 0.95
    - accuracy: 0.97 

- Best Model to Use: KNN CLASSIFICATION

    - Perfect precision (1.00) for flower species determination → Every predicted flower species was indeed its actual species.

    - Recall is the same (0.90) which means 90% were true positives.

    - f1-score is 0.95 which is slightly greater that of Decision Tree (0.90), this mean KNN has better balance between precision and recall.

    - Highest accuracy (0.97) overall, meaning 97% of the data was predicted correctly.


### Association Rules:
**Report:**
- My output is an empty DataFrame of association rules either because none of the item combinations met the min_confidence=0.5 threshold, or possibly my itemsets are too sparse to generate rules at all (i.e., too many 1-item sets).

- However the following is normally checked for any rule:
    - 'support': the proportion of transactions that contain the itemset.
    - 'confidence': the likelihood that the consequent is bought when the antecedent is bought.
    - 'lift': a measure of how much more likely the consequent is bought when the antecedent is bought compared to when it is not.

    - This helps placing the items near each other to increase convenience. They can also be placed together for recommendations like "Customers who bought product A also bought product B."



