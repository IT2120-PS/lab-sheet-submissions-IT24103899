getwd()
setwd("C:\\Users\\USER\\Desktop\\IT24103899_Lab4")
getwd()
branch_data<-read.table("Exercise.txt",header = TRUE ,sep = ",")
fix(branch_data)
str(branch_data)
boxplot(branch_data$Sales_X1,main="Boxplot for sales",xlab="Salse_X1",horizontal = TRUE)
summary(branch_data$Advertising_X2)
IQR(branch_data$Advertising_X2)
get_outliers<-function(x){
  Q1<-quantile(x,0.25)
  Q3<-quantile(x,0.75)
  IQR<-Q3-Q1
  lowerBound<-Q1-1.5*IQR
  upperBound<-Q3+1.5*IQR
  outliers<-x[x<lowerBound | x>upperBound]
  return(outliers)
}

get_outliers(branch_data$Years_X3)