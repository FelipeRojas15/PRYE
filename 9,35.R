z<-1.18
valor<-1000
xbarra1<-1:valor
xbarra2<-1:valor
sigma1<- 1:valor
sigma2<- 1:valor
n1<- 1:valor
n2<- 1:valor
resultadoInferior<- 1:valor
resultadoSuperior<- 1:valor
contador<-0
for(x in 1:valor){
  xbarra1[x]<- runif(1, min=70, max=90)
  xbarra2[x]<- runif(1, min=65, max=85)
  sigma1[x]<- runif(1, min=4, max=6)
  sigma2[x]<- runif(1, min=2, max=4)
  n1[x]<- runif(1, min=15, max=35)
  n2[x]<- runif(1, min=26, max=46)
  xbarra<- xbarra1[x]-xbarra2[x]
  divicion1<- (sigma1[x]^2)/n1[x]
  divicion2<- (sigma2[x]^2)/n2[x]
  suma<-divicion1+divicion2
  raiz<- sqrt(suma)
  resultadoInferior[x]<- xbarra-(z*raiz)
  resultadoSuperior[x]<- xbarra+(z*raiz)
  if (resultadoInferior[x]<0){
    if (resultadoSuperior[x]>0){
      contador<- contador+1
    }
  }
}
tabla <- data.frame(cbind(resultadoInferior, resultadoSuperior))
contador
