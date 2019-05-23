#teste t para media populacional
amostra1 = c(14.9,13.4,14.5,13.5,15.0,13.9,14.9,16.4,14.6,15.4)
t.test(amostra1,mu=15)

#Teste t para comparação de duas médias com variâncias iguais
amostra1 = c(16.6,13.4,14.6,15.1,12.9,15.2,14.0,16.6,15.4,13.0)
amostra2 = c(15.8,17.9,18.2,20.2,18.1,17.8,18.3,18.6,17.0,18.4)
t.test(amostra1, amostra2, var.equal = TRUE)

#Teste t pareado - - teste t pareado é usado quando se quer analisar variáveis que nao sao independentes
antes = c(16.6,13.4,14.6,15.1,12.9,15.2,14.0,16.6,15.4,13.0)
depois = c(15.8,17.9,18.2,20.2,18.1,17.8,18.3,18.6,17.0,18.4)
t.test(antes,depois,paired=TRUE)


# TESTES PARA COMPARACAO DE VARIANCIAS 

 #bartlett.test()
#Realiza o teste de Bartlett com a hipótese nula de que as variâncias dos grupos são
#iguais.

Vendas = c(10,12,15,14,13,17,16,13,12,19,14,16,12,
13,10,15,11,16,11,16,12,10,9,12,12,
11,8,13,11,14,18,16,21,23,25,24) 

Mes = c("Jan","Jan","Jan","Fev","Fev","Fev","Mar","Mar","Mar","Abr","Abr","Abr",
"Mai","Mai","Mai","Jun","Jun","Jun","Jul","Jul","Jul","Ago","Ago","Ago",
"Set","Set","Set","Out","Out","Out","Nov","Nov","Nov","Dez","Dez","Dez") 

dados = data.frame(Vendas=Vendas, Mes=Mes) 

bartlett.test(Vendas ~ Mes, data=dados) 

#tb eh possivel avaliar vetores

TimeA = c(30,25,32,22,19,26)
TimeB = c(18,24,31,28,29,30)
bartlett.test(list(TimeA, TimeB))
