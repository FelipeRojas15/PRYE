mu<- 0
valor<-1000
sigma <- 5.2
sigma2<- 3.4
n <- 25
n2<- 36
xbarra1 <- 81
xbarra2 <- 76
vector <-1:valor
vector2 <- 1:valor

for(i in vector){
  vector[i]<- mean(rnorm(n,mu,sigma))
}
for(y in vector2){
  vector2[y]<- mean(rnorm(n2,mu,sigma2))
}
vectorfin<- 1:valor
contador<-0
vectorfin<-vector-vector2
for(c in 1:valor){
  if(vectorfin[c]>=4.22){
    contador=contador+1
  }
}
contador

