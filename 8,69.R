mu<- 0
valor<-1000
sigma <-5
n <-20
xbarra1 <- 20.5
xbarra2 <- 24.5
vector <-1:valor
vector2 <- 1:valor

for(i in vector){
  vector[i]<- mean(rnorm(n,mu,sigma))
}
for(y in vector2){
  vector2[y]<- mean(rnorm(n,mu,sigma))
}
vectorfin<- 1:valor
contador<-0
vectorfin<-vector-vector2
for(c in 1:valor){
  if(vectorfin[c]>=4){
    contador=contador+1
  }
}
contador