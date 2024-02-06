#Basic Looping
#create a for loop that runs 5 times (1 to 5)
#each time the for loop runs, print the value of i
for(i in 1:5){
  print(i)    
}
# in this case, we have printed the object called 'i' using the {}

x <- 0 # make a new scalar called x with a value of 0
for(i in 1:10){  # create a for loop that runs 10 times (1 to 10)
x <- x + i      # within our for loop we are adding the value of i to the value of x
}
print(x)       #print x

#2.3 
#1.add print(x) command into the loop
x <- 0
for(i in 1:10){
  x <- x + i
  print(x)
}
print(x) # this shows the process of the addition

#2. try changing the numbers in the for() function
x <- 0
for(i in 1:4){
  x <- x + i
}
print(x)

#3. change the name of i
x <- 0
for(ana in 1:10){
  x <- x + ana
}
print(x)  

#4. Make a loop that loops over the numbers 10 to 20, and print the square of each
for(i in 10:20){
  print(i^2)
}

#2.4 Looping over non-integer vectors

shrek_quote <- c('What', 'are', 'you', 'doing', 'in', 'my', 'swamp')
for(word in shrek_quote){     #In this case the iterator is now word, rather than the usual i
  print(toupper(word))  #to upper means CAP LOCK
}
##[1] "WHAT"
##[1] "ARE"
##[1] "YOU"
##[1] "DOING"
##[1] "IN"
##[1] "MY"
##[1] "SWAMP"

#What does the following mean?
for(donkey in 1:length(shrek_quote)){
  print(toupper(shrek_quote[donkey]))  
}
#donkey - is the iterator instead of 'word' - so nothing is changes 
#toupper() - CAPS
#1:length() - changes it into a numeric vector (meaning 1 to the lenght of the shrek quote)
#shrek_quote
#shrek_quote[donkey] - telling it to print the words specified in donkey







