
# developed by: Mr ABCD
# developed date: 18th Jun 2018
# for learning

a =1
b =444

c=a+b
#print(c)

letters
LETTERS

month.name


#####

a =1		# integer - numeric
typeof(a)

a =111.2  	# double
typeof(a)

a ='sjsjsf 1122%^^^'	# character /alpha numeric
typeof(a)

a ="sjsjsgh 222"   # character /alpha numeric
typeof(a)

a = TRUE	# boolean
typeof(a)


a= c(111,2,3,4,45,454)  # vector 
typeof(a)


a =11
is.numeric(a)



a ='11'
is.numeric(a)
is.character(a)


n1 ='111'
n2 ='111'

as.numeric(n1) +as.numeric(n2)


### vector : is collection of values 
sales <- c(1111,22,22,3,23222,323333,232333,4333,4333,4444)

#print 2nd sales
sales[2] #return 2nd value 
sales[4] # return 4th position value
sales[4:6]  # return 4th, 5th, 6th position value 

max(sales) # highest value 
min(sales)  # lowest value 
sum(sales)  # return total of all elements
mean(sales)  # return average value 
length(sales)  # return count or size of vector

### operations  with vector 
tax = sales*.18

sum(sales*.18)
sum(tax)

tax+2

## generate dynamic vector
v1 <- c(1:10)
v2 <- c(11:20)
v1
v2
v1+v2

###  matrix : is square 
v1<- c(1:9)

matrix(v1,nrow = 3, ncol = 3)

matrix(v1,nrow = 3, ncol = 3,byrow = TRUE)


### rbind(v1,v2)
### cbind(v1,v2)
v1<- c(1:5)
v2<- c(6:10)

rbind(v1,v2)

cbind(v1,v2)



#########################
## condition : is decision making statement 
##########################
a = 1
b =3

if (a>b){ #true 
  
    print("a is greater")
  
}else{  # false 
  
  print("b is greater")
}
  


####
sid =11
sname ="jatin"
hs =66
es =99
ms =88
cs =77

total = hs+es+cs+ms
avg =total/4
print(total)
print(avg)
if( avg>=80){
  
  print("Grade A")
  
}else if(avg>=60){
  print("Grade B")
  
}else if(avg>=50){
  print("Grade C")
  
}else{
  print("Grade D")
}





a=5000
b=10000
c= 0.1*a
d= 0.5*b



######### Q. B8
sal = 12000
if (sal >= 5000 & sal<=10000){
  
  hra = sal*.10
  da = sal*.05
  print(hra)
  print(da)
  
}else if (sal >= 10001 & sal<=15000){

  
  hra = sal*.15
  da = sal*.08
  print(hra)
  print(da)
}



9
######## Q. B9
subject

a=55
b=80
c=45
d=30
e=90
avg=(a+b+c+d+e)/5

print(avg)

if(avg>=60){
  
  print("first")
  
}else if(avg>=50){
  
  print("second")
  
}else if(avg>=40){
  
  print("third")
}else{
  print("fail")

}
  

