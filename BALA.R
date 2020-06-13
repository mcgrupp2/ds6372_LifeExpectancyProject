install.packages("tidyr") ## install
library(tidyr)          ## load
install.packages("dplyr") ## install
library(dplyr)          ## load
install.packages("stringr") ## install
install.packages("reshape2") ## install
library(tidyverse)
library(reshape2)
library(ggplot2)
library(stringr)
install.packages("mlbench")
library(mlbench)
install.packages("caret")
library(caret)
library(plyr)     
library(tidyr)   
library(dplyr)
df=read.csv(file.choose(),header=TRUE)
control <- trainControl(method="repeatedcv", number=10, repeats=3)
# train the model
model <- train(Lifeexpect~., data=df, method="lvq", preProcess="scale", trControl=control)
print(model)
# estimate variable importance
importance <- varImp(model, scale=FALSE)
# summarize importance
print(importance)
# plot importance
plot(importance)
