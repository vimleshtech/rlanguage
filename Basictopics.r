## repeat 
x <- 1

repeat {
  print(x)
  x = x+1
  if (x == 6){
    break
  }
}


##### Recursive function 


# Recursive Functions in R Example
Number.factorial <- function(number)
{
  if(number == 0 || number == 1) {
    return (1)
  } else {
    return (number *  Number.factorial(number - 1))
  }
}

Number.factorial(6)

