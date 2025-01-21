# RISK ANALYSIS THROUGH SIMULATION – LAB
# Institute for Advanced Analytics
# We use NKE stocks prices

#PART 1
tickers = c("NKE")
quantmod::getSymbols(tickers)
head(NKE)

NKE$aapl_r <- ROC(NKE$NKE.Close)
NKE <- cbind(NKE$NKE.Close, NKE$aapl_r)

stocks <- last(NKE, '500 days')
plot(stocks$aapl_r)

#PART 2
mean(stocks$aapl_r)*100
var(stocks$aapl_r)
sd(stocks$aapl_r)*100
qnorm(0.01, mean = 0, sd = 1)

mean(stocks$aapl_r)*100 + (qnorm(0.01, mean = 0, sd = 1)
)*(sd(stocks$aapl_r)*100) # 1%

mean(stocks$aapl_r)*100 + (qnorm(0.05, mean = 0, sd = 1)
)*(sd(stocks$aapl_r)*100) # 5%

#PART 3
sort(as.numeric(stocks$aapl_r))
head(sort(as.numeric(stocks$aapl_r))) # 1%
head(sort(as.numeric(stocks$aapl_r)), 26) # 5%

#PART 4
# seed(2025)
hist(stocks$aapl_r, main= "Historical NKE")
density(stocks$aapl_r)
Est.AAPL <- rkde(fhat=kde(stocks$aapl_r, h=0.003482), n=10000)

hist(Est.AAPL, breaks=50, main = 'KDE of Historical NKE Daily Returns',
     xlab = 'Daily Returns')

quantile(Est.AAPL, 0.01)
quantile(Est.AAPL, 0.05)
