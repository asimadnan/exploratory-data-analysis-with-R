IBM = read.csv("IBMStock.csv")
GE = read.csv("GEStock.csv")
ProcterGamble = read.csv("ProcterGambleStock.csv")
CocaCola= read.csv("CocaColaStock.csv")
Boeing= read.csv("BoeingStock.csv")

IBM$Date = as.Date(IBM$Date, "%m/%d/%y")

GE$Date = as.Date(GE$Date, "%m/%d/%y")

CocaCola$Date = as.Date(CocaCola$Date, "%m/%d/%y")

ProcterGamble$Date = as.Date(ProcterGamble$Date, "%m/%d/%y")

Boeing$Date = as.Date(Boeing$Date, "%m/%d/%y")

summary(GE)
summary(CocaCola)
summary(IBM)
summary(Boeing)
sd(ProcterGamble$StockPrice)
plot(CocaCola$Date,CocaCola$StockPrice,type="l")
lines(ProcterGamble$Date, ProcterGamble$StockPrice)
plot(CocaCola$Date,CocaCola$StockPrice,type="l",color="red")
lines(ProcterGamble$Date, ProcterGamble$StockPrice,col="blue")
abline(v=as.Date(c("1983-01-01")), lwd=1)

plot(CocaCola$Date[301:432], CocaCola$StockPrice[301:432], type="l", col="red", ylim=c(0,210))
lines(ProcterGamble$Date[301:432], ProcterGamble$StockPrice[301:432], col="blue")
lines(IBM$Date[301:432],IBM$StockPrice[301:432],col="green")
lines(GE$Date[301:432],GE$StockPrice[301:432],col="orange")
lines(Boeing$Date[301:432],Boeing$StockPrice[301:432],col="pink")

abline(v=as.Date(c("2000-03-01")), lwd=1)
abline(v=as.Date(c("1995-01-01")), lwd=1)
abline(v=as.Date(c("2005-01-01")), lwd=1)

abline(v=as.Date(c("1997-09-01")), lwd=1)
abline(v=as.Date(c("1997-11-01")), lwd=1)


abline(v=as.Date(c("2004-01-01")), lwd=1)
abline(v=as.Date(c("2005-01-01")), lwd=1)


tapply(IBM$StockPrice, months(IBM$Date), mean)


summary(IBM)

tapply(GE$StockPrice, months(GE$Date), mean)

tapply(ProcterGamble$StockPrice, months(ProcterGamble$Date), mean)
tapply(CocaCola$StockPrice, months(CocaCola$Date), mean)
tapply(Boeing$StockPrice, months(Boeing$Date), mean)



