
i=2
while(i<10){

    print(i)
    i=i+2
  
}



i=1
while(i<=20){

    print(i)
   i=i+1
}


i=2
while(i<=256){
  print(i)
  i=i*2
}



i=-10
while(i<0){
  print(i)
  i=i+2
}

### 1 -4 7 -10 13  ...

i=1
while(i<=40){
  
 
  if(i%%2==0){
    
    print(paste("-",i))
    
  }else{
    
    print(i)
  }
    
  i=i+3
}


#####
v1<- c(1:100)
for(x in v1){
  print(x)
}



#####
v1<- c(1:40)
for(i in v1){
  
  if(i%%2==0){
    
    print(paste("-",i))
    
  }else{
    
    print(i)
  }
  
}


## operator 
2^8
2^6


85%%10

##
#R - break : to terminate the loop / interations
# jump outside from looop when conditon will match

#R - next : skip the current cycle when condition will match

v1<- c(1:100)
for(x in v1){
  
    if(x%%9 ==0 )    {
      break
    }
  print(x)
}

## break

v1<- c(1:10)
for(x in v1){
  
  if(x%%3 ==0 )    {
    next
  }
  print(x)
}


### repeat
v1 = 1
repeat{
  
  
  if(v1 ==10){
    break
  }
  print(v1)
  v1=v1+1
  
}


### function : is set of command or instruction which is reusable
# argument with no return 
add <- function(a,b){
  c =a+b
  print(c)
}

## argument with return 
sub <- function(a,b){
  c =a-b
  return(c)
}


## no argument no return 
wel <- function(){
  print('welcome to fun world')
}

##no argument with return
getNum <- function(){
  return(100)
}


pt1<- function(){
  
  i=2
  while(i<10){
    
    print(i)
    i=i+2
    
  }
  
  
}