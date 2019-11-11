z=1.894
n<-9
valor<-1000
resultadoInferior<- 1:valor
resultadoSuperior<- 1:valor
contador<-0
for( i in 1:7){
  valores<- 1:5
  valores1<- 1:7
  for(x in 1:7){
    valores1[x]<- runif(1, min=0, max=100)
  }
  for(x in 1:5){
    valores[x]<- runif(1, min=0, max=100)
  }
  finValor <- valores- valores1
  s<- sd(finValor)
  mu<- mean(finValor)
  resultadoInferior[i]= mu-(z*(s/sqrt(n)))
  resultadoSuperior[i]= mu+(z*(s/sqrt(n)))
  if (resultadoInferior[x]<0){
    if (resultadoSuperior[x]>0){
      contador<- contador+1
    }
  }
}
contador
valores
