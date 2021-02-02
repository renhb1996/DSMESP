load("C:/r_project/甜味绘图/RF_Model.RData")#调用模型
#desc<-colnames(Dataframe_x)
#write.table(desc,file="desc.txt",sep = ",")
desc_value<-read.table("C:/r_project/甜味绘图/desc-hg.txt",sep = ",")[,1]#调用描述符
#unknowsweet$id<-c(1:24735)
data_select<-sweetvaluepred[,desc_value]
data_select_scale <- scale(data_select)
data_value_pred<- data.frame(SMILES = sweetvaluepred$SMILES,data_select_scale)
sweetvaluepred.prediction <- predict(rf_mode1, sweetvaluepred[,-1])
#sweetvaluepred.prediction <- data.frame(sweetvaluepred.prediction)
data_value_all<-data.frame(SMILES=sweetvaluepred$SMILES,sweetvaluepred.prediction)
#attr(unknowsweet.prediction,"probabilities")
bb<-data.frame(SMILES = unknowsweet$SMILES,unknowsweet.prediction,id=c(1:24735))
cc<-subset(bb,sweet>=0.5)
sweetvalue<-data.frame()
for (i in cc$SMILES){
  dd<-subset(unknowsweet,SMILES==i)
  sweetvalue<-rbind(sweetvalue,dd)
  print(i)}
ee<-left_join(cc,unknowsweet,by="SMILES")

ee[,-c("type")]
write.csv(data_value_all,file = "data_value_all1.csv")
