#dividindo observacoes em intervalos

salario <- c(12, .4, 5, 2, 50, 8, 3, 1, 4, .25)
intervalo <- cut(salario,breaks=c(0,1,5,max(salario)))
intervalo


#frequencia de observacoes

table(intervalo)
intervalo
#rotulando os intervalos
levels(intervalo) <-c("pobre","rico"," rolando na grana")
table(intervalo)
#criando variáveis e definindo tabelAS  
Peso= c(60, 75, 55, 68)
Altura = c(65, 61, 70, 65)
Genero = c("Fe","Fe","M","Fe")
estudo = data.frame(Peso,Altura,Genero)
estudo
#alterando os rótulos 
estudo = data.frame(P=Peso,H=Altura,G=Genero)
row.names(estudo)<-c("Maria","Alice","André","Julia")
estudo

#curvas teoricas 
x = runif(100)
hist(x,probability = TRUE,main = "Distribuição uniforme [0,1]",ylab = "Densidade",col = "yellow")

curve(dunif(x,0,1),add = T)

#binomial
n=10;p=0.25
x=rbinom(100,n,p)
hist(x,probability=TRUE,ylab="Densidade",
     col="pink", main="Binomial",ylim=c(0,0.30))
xvalores=0:n
points(xvalores,dbinom(xvalores,n,p),type="h",
       lwd=3)
points(xvalores,dbinom(xvalores,n,p),type="p",
       lwd=3)

#curval normal
x=rnorm(100)
hist(x,probability=TRUE,col="lightblue",main="Normal(0,1)",ylab="Densidade",ylim=c(0,0.5),xlim=c(-3,3))
curve(dnorm(x),add=T)

#exponencial
x=rexp(100,1/2500)
hist(x,probability=TRUE,col="lightgreen",main="Exponencial com média=2500",ylab="Densidade")
curve(dexp(x,1/2500),add=T)