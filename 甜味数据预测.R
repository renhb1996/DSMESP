load("C:/r_project/RF.RData")#调用模型
#desc<-colnames(Dataframe_x)
#write.table(desc,file="desc.txt",sep = ",")
desc_1<-read.table("C:/r_project/甜味绘图/desc.txt",sep = ",")[,1]#调用描述符
unknowsweet$id<-c(1:24735)
aa<-unknowsweet[,desc_1]
aa_scale <- scale(aa)
data_pred<- data.frame(SMILES = unknowsweet$SMILES, aa_scale)
unknowsweet.prediction <- predict(Randommodel, data_pred[,-1],type="prob")
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
write.csv(ee,file = "sweetvaluepred.csv")
