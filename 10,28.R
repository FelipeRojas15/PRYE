  n-25
  df<-48
  ncp<-0
  contador<-0
  for (v in 1:1000){
    
  vector<- rt(n,df,ncp)
  for (x in 1:n){
    resultado<-8/(vector[x]*sqrt(1/25))
    if(resultado>0){
      contador<- contador+1
    }
  }
  }
  contador