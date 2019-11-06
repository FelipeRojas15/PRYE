z<-1.18
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
  xbarra1[x]<- runif(1, min=30, max=130)
  xbarra2[x]<- runif(1, min=25, max=125)
  sigma1[x]<- runif(1, min=4, max=6)
  sigma2[x]<- runif(1, min=2, max=4)
  n1[x]<- runif(1, min=15, max=35)
  n2[x]<- runif(1, min=26, max=46)
  xbarra<- xbarra1[x]-xbarra2[x]
  divicion1<- sigam1[x]/n1[x]
  divicion2<- sigma2[x]/n2[x]
  suma<-divicion1+divicion2
  raiz<- sqrt(suma)
  resultadoInferior[x]<- xbarra-(z*raiz)
  resultadoSuperior[x]<- xbarra+(z*raiz)
  if(resultadoInferior[x]>2.9){
    contadorI<- contadorI+1
  }
  if(resultadoSuperior[x]<7.1){
    contadorS<- contadorS+1
  }
}
contadorS
contadorI
contador<- contadorI+contadorS
contador
