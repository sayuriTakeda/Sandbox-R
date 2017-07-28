library(caret)
library(mlbench)
library(dplyr)

###### Testar pacote Caret ###### 

base<-iris

inTrain <- createDataPartition(y=base$Species, p=0.75,list = F)
str(inTrain)

training <- base[inTrain,(4:5)] # treinar apenas com Petal.Width (com todas as features da erro 0)
testing <- base[-inTrain,(4:5)]

nrow(training)
nrow(testing)

plsFit <- train(Species ~., data = training, methods = "pls", preProc = c("center","scale"))

resultado = predict(plsFit,newdata = testing)
testing <- testing %>% mutate(resu = resultado)

testing$Species == testing$resu

nrow(subset(testing, resu != Species))

###### Testar Naive Bayes ###### 

base<-iris
inTrain <- createDataPartition(y=base$Species, p=0.75,list = F)

training <- base[inTrain,]
testing <- base[-inTrain,]

fit <- e1071::naiveBayes(Species ~ Petal.Width, data=training)

predict(fit,testing)

resultado = predict(fit,testing)

testing <- testing %>% mutate(resu = resultado)
nrow(subset(testing, resu != Species))
