dados<-read.csv("~/Dados/RevEstatistica/introEst/IntroToDataScience/train.csv")
#aplica uma função sobre as duas variáveis
tapply(dados$survived,dados$age,summary)
#aplica faixa aos dados 
cut(dados$age,breaks=c(20,30,40,50),labels=c("A","B","C"),right=FALSE)
#colocar dentro de uma tabela
table(cut(dados$age,breaks=c(20,30,40,50),labels=c("A","B","C"),right=FALSE))
#relaçao linear entre a ter sobrevivido ou nao
lm(formula=dados$age ~ as.factor(dados$survived),data=dados)
