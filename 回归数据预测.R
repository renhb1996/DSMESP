library(readxl)
regression_demo <- read_excel("regression_demo.xlsx")
load("RF_Model.RData")#调用模型
desc_value<-read.table("desc-hg.txt",sep = ",")[,1]#调用描述符
data_select<-regression_demo[,desc_value]
data_value_pred<- data.frame(SMILES = regression_demo$SMILES,data_select)
sweetvaluepred.prediction <- predict(rf_mode1, regression_demo[,-1])
data_value_all<-data.frame(SMILES=regression_demo$SMILES,sweetvaluepred.prediction)
sweetvalue <- data_value_all
sweetvalue
