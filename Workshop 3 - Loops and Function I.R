#Basic Looping
#2.1 create a for loop that runs 5 times (1 to 5)
#each time the for loop runs, print the value of i
for(i in 1:5){
  print(i)    
}
# in this case, we have printed the object called 'i' using the {}

#2.2
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
  print(x) #add print(x) into the command loop
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
#[] are used for indexing into a vector

#3 Saving outputs
#common requirement for loops is saving outputs using the output vector
output <- vector() # creates an empty vector that we can fill with values
input <- c('red', 'yellow', 'green', 'blue', 'purple')
for(i in 1:length(input)){
  output[i] <- nchar(input[i]) #nchar shows the lenght of the word
}
print(output)
##[1] 3 6 5 4 6

#Create a for loop that takes a vector named words with the elements 'buzz' 'cross' 'broads' 'fore' and '', adds the word 'word' to each of them, and saves them as a new vector called wordwords. Google is your friend… Your outputted vector should be like so:
words <- vector()
input <- c('buzz', 'cross', 'broads', 'fore', '')
for(i in 1:length(input)){
  words[i] <- paste(input[i], 'words', sep='')
}
wordswords <- print(words)

#4. Condition statements
#4.1 Using if()
numbers <- c(1, 4, 7, 33, 12.1, 180000,-20.5)
for(i in numbers){
  if(i > 5){
    print(i)
  }
}
## [1] 7
## [1] 33
## [1] 12.1
## [1] 180000

numbers <- c(1, 4, 7, 33, 12.1, 180000,-20.5)
for(i in numbers){
  if(i < 5 & i %% 1 == 0){
    print(paste(i, ' is less than five and an integer.', sep = ''))
  }
}
## [1] "1 is less than five and an integer."
## [1] "4 is less than five and an integer."

nums <- c(11, 22, 33, -0.01, 25, 100000, 7.2, 0.3, -2000, 20, 17, -11, 0)
for(i in numbers){
  if(i < 50 & i %% 2 == 0){
    print(paste(i, ' is less than 50 and divsible by 2.', sep = ''))
  }
}
##[1] "8 is less than 50 and divsible by 2."

#4.2 Using else
#We can add a layer of complexity to our conditional statements by also defining what code to run if the conditional is FALSE by using else{}.
numbers <- c(1, 4, 7, 33, 12.1, 180000,-20.5)
for(i in numbers){
  if(i < 5 & i %% 1 == 0){
    print(paste(i, ' is less than five and an integer.', sep = ''))
  } else {
    print(paste(i, ' is not less than five or is not an integer (or both!).', sep = ''))
  }
}
## [1] "1 is less than five and an integer."
## [1] "4 is less than five and an integer."
## [1] "7 is not less than five or is not an integer (or both!)."
## [1] "33 is not less than five or is not an integer (or both!)."
## [1] "12.1 is not less than five or is not an integer (or both!)."
## [1] "180000 is not less than five or is not an integer (or both!)."
## [1] "-20.5 is not less than five or is not an integer (or both!)."

#4.3 Using else if()
numbers <- c(1, 4, 7, 33, 12.1, 180000,-20.5)
for(i in numbers){
  if(i < 5 & i %% 1 == 0){
    print(paste(i, ' is less than five and an integer.', sep = ''))
  } else if(i < 5 & i %% 1 != 0){
    print(paste(i, ' is not an integer.', sep = ''))
  } else if(i >= 5 & i %% 1 == 0){
    print(paste(i, ' is not less than five.', sep = ''))
  } else {
    print(paste(i, ' is not less than five and is not an integer.', sep = ''))
  }
}

#The difference between else{} and else if() is that else will be the complete FALSE of the if, but else if() lets you be more specific with else{}
## [1] "1 is less than five and an integer."
## [1] "4 is less than five and an integer."
## [1] "7 is not less than five."
## [1] "33 is not less than five."
## [1] "12.1 is not less than five and is not an integer."
## [1] "180000 is not less than five."
## [1] "-20.5 is not an integer."

#5. Question Time
#Make a for loop that iterates over the numeric vector c(1,1,3,5,8,13,21) and prints the square root of each of the numbers.
numbers <- c(1, 1, 3, 5, 8, 13, 21)
for(i in numbers){
  print(sqrt(i))
}

#2) Create a vector of a quote from your favourite film (each word should be a single element). Loop over the words and print all words that are 4, 5 or 6 characters long, print 'no' instead when the words are < 4 characters long and print 'harry potter' if they are more than 6 characters long.
titanic_quote <- c('Jack', 'I', 'will', 'never', 'let', 'goooooooo')
for(i in titanic_quote){
  if(nchar(i) == 4 | nchar(i) == 5 | nchar(i) == 6){
    print(i)
  } else if(nchar(i) < 4){
    print('no')
  } else {
    print('harry potter')
  }
}
##[1] "Jack"
##[1] "no"
##[1] "will"
##[1] "never"
##[1] "no"
##[1] "harry potter"

alphabet <- matrix(data = c('A','B','C','D','E','F','G','H',
                            'I','J','K','L','M','N','O','P',
                            'Q','R','T','S','U','V','W','X',
                            'Y','Z'),
                   nrow = 2)
position <- matrix(data = c('first','second','third',
                            'fourth','fifth','sixth',
                            'seventh','eighth','ninth',
                            'tenth','eleventh','twelfth',
                            'thirteenth','fourteenth','fifteenth',
                            'sixteenth','seventeenth','eighteenth',
                            'nineteenth','twentieth','twenty first',
                            'twenty second','twenty third','twenty fourth',
                            'twenty fifth','twenty sixth'),
                   nrow = 2)

for(i in 1:13){
  for(j in 1:2){
    print(paste(alphabet[j,i],' is the ', position[j,i], ' letter of the alphabet.', collapse = ''))
  }
}


