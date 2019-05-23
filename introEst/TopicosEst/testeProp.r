#teste para proporcoes populacionais 

# prop.test(x, n, p, opções)

#x: Vetor contendo o número de sucessos em cada amostra.
#n: Vetor contendo o número de realizações de cada amostra.
#p: Vetor contendo as probabilidades de sucesso de cada amostra

prop.test(104,200,0.6,correct=F)


#Teste para comparação de duas proporções
prop.test(c(104,50),c(200,95),correct=F)

#fisher.test() Realiza o teste exato de independência de linhas e colunas em uma tabela

Trabalho = matrix(c(1,2,1,0, 3,3,6,1, 10,10,14,9, 6,7,12,11), 4, 4,
dimnames = list(Receita=c("< 15mil", "15-25mil", "25-40mil", "> 40mil"),
Satisfação=c("M.Insatisfeito", "P.Insatisfeito", "Mod.Satisfeito", "M.Satisfeito")))

Trabalho

fisher.test(Trabalho)

#TESTS PARA NORMALIDADE

#teste de shapiro
shapiro.test(rnorm(10, mean=10, sd=4)) 



