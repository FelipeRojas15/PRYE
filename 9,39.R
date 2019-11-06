  z<-5.305*2.763
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
    xbarra1[x]<- runif(1, min=34, max=134)
    xbarra2[x]<- runif(1, min=27, max=127)
    sigma1[x]<- runif(1, min=3, max=5)
    sigma2[x]<- runif(1, min=5, max=7)
    n1[x]<- runif(1, min=2, max=22)
    n2[x]<- runif(1, min=8, max=28)
    xbarra<- xbarra1[x]-xbarra2[x]
    divicion1<- 1/n1[x]
    divicion2<- 1/n2[x]
    suma<-divicion1+divicion2
    raiz<- sqrt(suma)
    resultadoInferior[x]<- xbarra-(z*raiz)
    resultadoSuperior[x]<- xbarra+(z*raiz)
    if(resultadoInferior[x]>1.537){
      contadorI<- contadorI+1
    }
    if(resultadoSuperior[x]<12.463){
      contadorS<- contadorS+1
    }
  }
  contadorS
  contadorI
  contador<- contadorI+contadorS
  contador
