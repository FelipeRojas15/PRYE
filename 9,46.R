z<-1.894
contadorI<-0
contadorS<-0
valor<-1000
xbarra1<-1:valor
xbarra2<-1:valor
sigma1<- 1:valor
sigma2<- 1:valor
n1<- 1:valor
n2<- 1:valor
resultadoInferior<- 1:valor
resultadoSuperior<- 1:valor
for(x in 1:valor){
  xbarra1[x]<- runif(1, min=44.4, max=144.4)
  xbarra2[x]<- runif(1, min=60.7, max=160.7)
  sigma1[x]<- runif(1, min=7.73, max=9.37)
  sigma2[x]<- runif(1, min=31.2, max=33.2)
  n1[x]<- runif(1, min=1, max=15)
  n2[x]<- runif(1, min=1, max=17)
  xbarra<- xbarra1[x]-xbarra2[x]
  divicion1<- (sigam1[x]^2)/n1[x]
  divicion2<- (sigma2[x]^2)/n2[x]
  suma<-divicion1+divicion2
  raiz<- sqrt(suma)
  resultadoInferior[x]<- xbarra-(z*raiz)
  resultadoSuperior[x]<- xbarra+(z*raiz)
  if(resultadoInferior[x]> -36.5){
    contadorI<- contadorI+1
  }
  if(resultadoSuperior[x]< 11.9){
    contadorS<- contadorS+1
  }
}
contadorS
contadorI
contador<- contadorI+contadorS
contador
