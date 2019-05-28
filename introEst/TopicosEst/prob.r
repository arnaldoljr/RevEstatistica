## Funcao de Densidade ( ou probabilidade)
# coloca o d na frente 
#You should use R’s dbinom function.
#You can use this to calculate the probability of getting X successes on n binomial 
#trials. For example, if we have a fair coin 
#(p(head)=.5), then we can use the dbinom function to 
#calculate the probability of getting 5 heads in 10 trials

dbinom(5, size=10, prob=0.5)

##Gerador Aleatório
# lets assume we’re in charge of quality for a factory.[
# We make 150 widgets per day. 
#Defective widgets must be reworked. We know that 
#there is a 5% error rate. 
#Lets estimate how many widgets we will need to fix each day this week.
rbinom(7, 150,.05)

#gerar um cara ou coroa 
#distribuição de bernoulli

rbinom(10, 1,.5)

# probabilidade acumulativa 
#If we flip a fair coin 10 times, what is the 
#probability of getting 5 or less heads?
#cumulative probability of an event

pbinom(5,10,0.5)

#Funcao de probabilidade 
#inverse binomial distribution -  You provide the function with the specific
#percentile within the cumulative distribution function
# you want to be at or below and it will generate the
#number of successes associated with that cumulative
#probability.
qbinom(0.25,10,.5)


#here is the 90th percentile of a binomial 
#distribution with n = 200 and p = 0.3.
#quantile=0.9

qbinom(0.9, 200, 0.3)

x <- seq(0.001, 0.999, length=1000)
y <- qnorm(x)
plot(x, y, type="l")