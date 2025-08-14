
## Clustering Analysis Report

The K-Means clustering with k=3 yielded an Adjusted Rand Index (ARI) of approximately 0.716, this indicates a fairly good match between predicted clusters and actual species. The visual of the cluster scatter plot (petal length vs petal width) shows that Setosa is well-separated from Versicolor and Virginica, while Versicolor overlaps slightly with Virginica. This misclassification is expected since some of Versicolor's feature values lie in Virginica.

When experimenting with k=2 and k=4, their Adjusted Rand Index (ARI) was well below that of k=3 (0.716), (0.57, and 0.623 respectively). The elbow curve clearly showed a sharp drop in inertia at k=3, this suggests that 3 is the optimal number of clusters — confirming the known number of species in the dataset.

Clustering is useful in real-world applications for example, in customer segmentation, where the goal is to group users with similar behaviors without knowing their categories upfront. This helps discover patterns that can aid businesses in decision-making.




