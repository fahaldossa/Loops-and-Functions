#While loops
#they loop over a section of code within curly brackets {}
#Instead of giving loops an object to iterate over (usually a vector), while loops will instead take a conditional statement
#They continue to loop over the statement while the statement is TRUE
x <- 0
while(x < 5){
  x <- x + 1
  print(paste('The number is now ', x, sep = ''))
}
## [1] "The number is now 1"
## [1] "The number is now 2"
## [1] "The number is now 3"
## [1] "The number is now 4"
## [1] "The number is now 5"

#Q.Why does the code stop running after 5 iterations? 
#A.Because x < 5

#We want to create a loop that is the lowest number that is a factor of 5, 6, and 7
x <- 1
while(x %% 5 != 0 | x %% 6 != 0 | x %% 7 != 0){
  x <- x + 1
}
print(paste('The lowest number that is a factor of 5, 6, and 7 is ', x, sep = ''))
##[1] "The lowest number that is a factor of 5, 6, and 7 is 210"

#Make your own loop that takes a starting value of x <- 0.999 that squares x in each loop until x is less than 0.5.
x <- 0.99
while(x >= 0.5){
  x <- x^2
  print(x)
}

#Basic functions
#instead of copy and pasting large chunks of code that then need adapting to the current context, we can instead write a function!
powers <- function(x){
  y <- x^2
  return(y)
}
powers(1)

powers <- function(x){
  y <- x ^ 2
  z <- x ^ 3
  return(c( y, z))
}
powers(1)
## [1] 1 1
powers(30)
## [1]   900 27000
powers(5189)
## [1]     26925721 139717566269

#Create a function that converts a character scalar of a month into the number of the position of said month in the year (e.g. an input of 'May' will return 5 or an input of 'November' will return 11).
month_converter <- function(month){
  months <- c('January','February','March',
              'April','May','June',
              'July','August','September',
              'October','November','December')
  return(grep(pattern = month, x = months))
}
month_converter('May')

month_converter <- function(month_input){ 
  months <- c('January','February','March',
              'April','May','June',
              'July','August','September',
              'October','November','December')
  output <- vector()
  for(i in month_input){
    output[i] <- grep(pattern = i, x = months)
  }
  return(output)
}

#This means that the function will assume that an input is the default, unless stated otherwise.
powers <- function(x, y = 2){
  z <- x ^ y
  return(c(z))
}
powers(3)
## [1] 9
powers(3, 3)
## [1] 27

#Write a function that takes a character scalar (e.g. 'Bird') and returns a character scalar that appends is the word on the end of the word (e.g. ’Bird is the word').
bird <- function(x){
  y <- gsub(pattern = '$', x = x, replacement = ' is the word')
  return(y)
}
bird(x)
##[1] "Bird is the word"

bird <- function(x, y = ' is the word'){
  z <- gsub(pattern = '$', x = x, replacement = y)
  return(z)
}
bird()

#4. Lists
# A highly flexible way to save outputs is to do so in a list. Lists are similar to vectors, but each element can be any object in R, rather than having to be a scalar. 
#The subscripting of a list a double square bracket [[]]. 
quotes <- list()
quotes[[1]] <- c("We're", 'gonna', 'need', 'a', 'bigger', 'boat.')
quotes[[2]] <- c('Never', 'taken', 'a', 'shortcut', 'before?')

quotes
## [[1]]
## [1] "We're"  "gonna"  "need"   "a"      "bigger" "boat." 
## 
## [[2]]
## [1] "Never"    "taken"    "a"        "shortcut" "before?"

quotes[[1]]

result <- 1
for(i in 1:4){
  result <- result*i
}
print(result)

output_list <- list()
for(i in 1:10){
  output_list[[i]] <- fib(i)
  print(output_list[[i]])
}

powers2 <- function(x, y){
  output <- vector()
  for(i in 1:y){
    output[i] <- x ^ i
  }
  return(output)
}
result <- powers2(2, 3)
print(result)
