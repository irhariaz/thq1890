singapore.economy = read.csv ("singapore.economy.csv")
dataset <- singapore.economy

#B
dataset <- na.omit (dataset)

#C
plot(dataset$time, dataset$gdp, xlab = "Time", ylab = "GDP (%)", main = "Singapore GDP growth")

#D
d<-Df[,c(2,3)]
d
head(d)
a <- d[d$period = 2,]
a
mean(a[[2]])
c<-sd(a[[2]])

#E
pairs (~gdp + exp + epg + hpr + gdpus + oil + crd + bci,data=dataset)

#F
slregression = lm(gdp~exp, data=dataset)
slregression
summary (slregression)

#G
mlregression = lm(gdp~exp+epg+hpr+oil+gdpus+crd, data=dataset)
mlregression
summary (mlregression)

