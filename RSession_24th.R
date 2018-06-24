
### vector 
oid <- c(1,2,3,4,5)
sales <- c(1111,2222,33334,444444,55555)
customer <- c("nitin","jatin","divya","chahat","raman")



oid
sales
customer


###opertions with vector
sum(sales)
max(sales)
min(sales)
mean(sales)

##calcualte tax 
tax = sales*.18  # here tax is new vector 
total_tax = sum(tax)
total_sales = sum(sales)

net_sales = total_sales - total_tax

##get profit/ calculate profit
net_profit = net_sales*.12



###access vector by indesx
sales[1]  # 1st element 
sales[3]  # 3rd element 

sales[2:4]  # from 2 to 4 

### addition of two vector 
v1<- c(1:5)
v2<- c(11:15)
v1
v2
v1+v2



##############################
### create dataframe 
sales.data = data.frame(oid,customer,sales)
## print data frame 
print(sales.data)

###print column by index or name 

##ACCESS COLUMN BY NAME 
sales.data$customer
sales.data$oid


##ACCESS COLUMN BY INDEX
sales.data[,2] ## all rows and 2nd col
sales.data[,1] ## 


##ACCESS PARTICULAR VALUE BY ROW AND COL INDEX 
sales.data[1,1] # 1st row and 1st col

##ACCESS PARTICUALR ROW BY INDEX

##ACCESS COLUMN
sales.data[2,] 




####
XDATA = data.frame(
  
    eid = c(1:5),
    name = c("nitin","jatin","divya",'ayush','raman'),
    gender = c("male","male","female",'male','male')
    )




#### RBIND : ROW BIND
c1 <- c(1:10)
c2 <- c(11:20)

d<- rbind(c1,c2)

### CBIND : COL BIND 
d<- cbind(c1,c2)



##matrix 

v <- c(1:12)

matrix(v,nrow = 3,ncol = 4)
matrix(v,nrow = 4,ncol = 4)

mdata  = matrix(v,nrow = 4,ncol = 3,byrow = TRUE)

write.csv(mdata,'C:\\Users\\vkumar15\\Desktop\\mydata.csv')

write.csv(sales.data,'C:\\Users\\vkumar15\\Desktop\\sales.csv')



###factor 
XDATA$gender
is.factor(XDATA$gender)

unique(XDATA$gender)

unique(XDATA$name)

is.factor(XDATA$name)

a = as.factor(XDATA$name)
is.factor(a)




##list
v<- c(1:100)
l = list(1,2,3,4,5,6,"text")


##array 
# Create two vectors of different lengths.
vector1 <- c(5,9,3)
vector2 <- c(10,11,12,13,14,15)

# Take these vectors as input to the array.
result <- array(c(vector1,vector2),dim = c(2,3,3))

print(result)


###
data = read.csv("C:\\Users\\vkumar15\\Desktop\\backup\\bmi.csv")

data$height


#####

oid  customer   product   country  sales_amount


ouptut:
countryname  total_rows    totla_sal 
india `     20`           445555
us `     25`           44555544

oid <-c(1,2,3,4,5)
cname <-c('gyan','hemant','monika','adam','shivani')
product <-c('mobile','jeans','tv','shirt','coat')
country <-c('US','srilanka','india','pakistan','india')
sales_amount <-c(80000,5000,150000,500,10000)

g.data = data.frame(oid,cname,product,country,sales_amount)

a=as.factor(country)

unique(a)

#india pakistan srilanka US

ic = 0
is = 0

i =1 
while(i<=length(g.data$country)){
  
    if(g.data$country[i] == 'india'){
      ic = ic+1
      is = is + g.data$sales_amount[i]
      
    }else if(g.data$country[i] == 'pakistan'){
      
      
    }else if(g.data$country[i] == 'srilanka'){
      
      
    }else{
      
      
    }
   
    print(g.data$country[i])
    i =i+1
}

print ( paste("india",ic,is))