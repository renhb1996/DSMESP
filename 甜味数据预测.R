library(readxl)
classification_demo <- read_excel("classification_demo.xlsx")
load("RF_classification.RData")#调用模型
desc_1<-read.table("desc.txt",sep = ",")[,1]#调用描述符
aa<-classification_demo[,desc_1]
data_pred<- data.frame(SMILES = classification_demo$SMILES, aa)
unknowsweet.prediction <- predict(Randommodel, data_pred[,-1],type="prob")
unknowsweet.prediction <- data.frame(unknowsweet.prediction)
bb<-data.frame(SMILES = classification_demo$SMILES,unknowsweet.prediction)
result <- subset(bb, sweet >= 0.5)
result
