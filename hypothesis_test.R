
### Let's run a hypothesis test

xbar<- 4.5
s<- 1.6
n<-67
null<- 3.5

t<- (xbar - null) / (s/sqrt(n)); t

2*(1-pt(abs(t),df=n-1))
