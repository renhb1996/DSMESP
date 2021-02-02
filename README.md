# Discovery-of-Sweet-Molecules-and-Establishment-of-Sweetness-Prediction-Models

## Abstract
#### Sweetness is the most important taste in food, and the food additive industry urgently needs to discover new sweet molecules to produce new sweeteners. Traditional excavation methods are time-consuming, laborious, and inefficient. This study is based on the assumptions related to the sweetness of sweet molecules and molecular structure, using data from literature, patents, and databases to establish a database of sweetness, non-sweetness, and sweetness. Random forest and support vector machine algorithms establish a qualitative structure-activity relationship model to qualitatively predict the sweetness of molecules, using principal component regression, k nearest neighbor regression, random forest regression, and partial least square regression to quantitatively predict the sweetness of sweet molecules. After the model is established, the qualitative and quantitative models are combined to explore the possible sweet food components and their sweetness in the FooDB database. The study found that the random forest machine algorithm model has the best classification effect, and the area under the receiver operating characteristic curve is 0.9803; the random forest regression model has the best sweetness prediction effect, with an accuracy of 0.81, and a root mean square error of 0.84. Using these two models in the FooDB library, 12476 molecules of natural food components that become sweeteners are found.

## How to use
```R
# Model loading
# Sweet substance recognition
load("./RF.RData")
# Sweet value prediction
load("./RF_Model.RData")
# After loading, you can use these models for prediction.
```
## Figure
![image]https://github.com/renhb1996/Discovery-of-Sweet-Molecules-and-Establishment-of-Sweetness-Prediction-Models/blob/main/%E7%94%98%E8%8D%89%E8%8B%B7.png
