dados<-read.csv("~/Dados/RevEstatistica/introEst/IntroToDataScience/train.csv")
table(dados$survived)
 prop.table(table(dados$survived))
#para variaveis quantitativas 
summary(dados$age)
#para variaveis qualitativas precisa usar o as.factor
summary(as.factor(dados$survived))
mean(dados$age,na.rm=TRUE)
var(dados$age,na.rm=TRUE) 
sd(dados$age,na.rm=TRUE)
