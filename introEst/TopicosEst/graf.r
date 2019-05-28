dados<-read.csv("/home/arnaldonot/Documentos/projetos/RevEstatistica/introEst/IntroToDataScience/train.csv")


#grafico de barras 

barplot(table(dados$survived), col=c("red","blue"),
        ylim=c(0,1000),
        space=.8, width=c(.2,.2),
        main="Taxa de sobrevivência",
        xlab="Sobreviventes", ylab="Número de Passajeitos")
text(locator(n=2),c("56%","44%"))

#histograma
hist(dados$pclass, main="Histograma da variável Classes",
     prob=T, xlab="CLASSE", ylab="Densidade",
     col=c("pink"), ylim=c(0,5.3), col.main="darkgray")



#boxplot

boxplot(dados$age, main="Boxplot de Idade",
        ylab="Idade", col=("green"))

#boxplot 2

boxplot(dados$age ~ dados$pclass,
        main="Boxplot de Idade por grau de Classe Social",
        xlab="Classe no Navio", ylab="Idade",
        col=c("yellow","orange","red"))
#gráfico de pizza
pie(table(dados$pclass),
    main="Gráfico de setores: Classe no Navio")
text(locator(n=1),
     paste(round(prop.table(table(dados$pclass))[1],
                 digits=2)*100,"%"))
text(locator(n=1),
     paste(round(prop.table(table(dados$pclass))[2],
                 digits=2)*100,"%"))
text(locator(n=1),
     paste(round(prop.table(table(dados$pclass))[3],
                 digits=2)*100,"%"))

#grafico de pontos

plot(dados$pclass, dados$age, pch=1, lwd=2,
     main="Gráfico de dispersão: Classe x Idade",
       xlab=" Classe", ylab="Idade (anos)")
