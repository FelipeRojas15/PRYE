mu<- 7950
valor<-1000
sigma <-100
n <-25
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
contadorA<-0
vectorfin<-vector-vector2
for(c in 1:valor){
  if(vectorfin[c]>=0){
    contadorA=contadorA+1
  }
}
contadorA