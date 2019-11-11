z<- 2.763*5.305
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
  xbarra1[x]<- runif(1, min=6, max=8)
  xbarra2[x]<- runif(1, min=6, max=8)
  sigma1[x]<- runif(1, min=1, max=2)
  sigma2[x]<- runif(1, min=1, max=2)
  n1[x]<- runif(1, min=2, max=22)
  n2[x]<- runif(1, min=8, max=28)
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
