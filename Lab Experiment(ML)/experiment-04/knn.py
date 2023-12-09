from collections import Counter

import numpy as np
from sklearn import datasets
from sklearn.model_selection import train_test_split
from sklearn.metrics import accuracy_score



########################## Classifier Implementation #################################
def euclidian_distance(x1, x2):
    distance = np.sqrt((x1[0]-x2[0])**2 + (x1[1]-x2[1])**2)
    return distance

class KNN:
    def __init__(self,k=3):
        self.k = k

    def fit(self, X, y):
        self.X_train = X
        self.y_train = y

    def predict(self, X):
        predictions = [self._predict(x) for x in X]
        return predictions

    def _predict(self, x):
        distances = [euclidian_distance(x, x_train) for x_train in self.X_train]

        indices = np.argsort(distances)[:self.k]

        k_nearest_labels = [self.y_train[i] for i in indices]

        most_common = Counter(k_nearest_labels).most_common()

        return most_common[0][0]

 
X = [4, 5, 9, 4, 3, 11, 14, 8, 10, 13]
y = [21, 19, 24, 15, 16, 25, 23, 22, 21, 22]

target = [0, 0, 1, 1, 0, 1, 0, 1, 1]

inp = list(zip(X, y))

print(inp)

model = KNN(k=5)
model.fit(inp, target)
predictions = model.predict(inp)
print(predictions)

accuracy = accuracy_score(target, predictions)
print('Accuracy: ', accuracy)