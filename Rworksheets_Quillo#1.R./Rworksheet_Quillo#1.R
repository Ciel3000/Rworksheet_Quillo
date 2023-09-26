# 1. Set up a vector named age, consisting of 34, 28, 22, 36, 27, 18, 52, 39, 42, 29,
# 35, 31, 27, 22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 42, 53, 41,
# 51, 35, 24, 33, 41.

#a How many data points
  age <- c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29,
      35, 31, 27, 22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 42, 53, 41,
      51, 35, 24, 33, 41);
  age
# 1.a How many data points?
  
  dataofage <- length(age)
  dataofage
  
# 1.b
  
  dataofage <- length(age)
  dataofage
  
#2Find the reciprocal of the values for age. Write the R code and its output.
  
 reciprocated <- 1/age
 reciprocated
 
#3. Assign also new_age <- c(age, 0, age). What happen to the new_age?
 
 new_age <- c(age, 0, age)
 new_age
  
  # it added a 0 and another new 34 ages
  
#4Sort the values for age. Write the R code and its output.
 
 sorted <- sort(age)
 sorted
 
#5 Find the minimum and maximum value for age.Write the R code and its output.
 
 agemax <- max(age)
 agemin <- min(age)
 agemax
 agemin
 
#6Set up a vector named data, consisting of 2.4, 2.8, 2.1, 2.5, 2.4, 2.2, 2.5, 2.3, 2.5, 2.3, 2.4, and 2.7.
 #6.a

 vect <- c(2.4, 2.8, 2.1, 2.5, 2.4, 2.2, 2.5, 2.3,
   2.5, 2.3, 2.4,2.7)
 
 datap2 <- length(vect)
 datap2
 
 #6.b
 
 datap2 <- length(vect)
 datap2
 
 
 #7 Generates a new vector for data where you double every value of the data. | What happen to the data?
 
 newData <- c(1,2,3,4,5,6,7,8,9,10)
 doubleData <- newData * 2
 doubleData
 
    # the data doubled
 
 #8Generate a sequence for the following scenario:
 
 #8.1Integers from 1 to 100.
 oneto100 <- seq(1,100)
 oneto100
 
 #8.2 Numbers from 20 to 60
 twentyto60 <- seq(20,60)
 twentyto60
 
 #8.3 Mean of numbers from 20 to 60
 twentyto60mean <- mean(twentyto60)
 twentyto60mean
 
 #8.4 Sum of numbers from 51 to 91
 fiftyto91 <- seq(51,91)
 totalof51to91 <- sum(fiftyto91)
 totalof51to91
 
 #8.5 Integers from 1 to 1,000
 intfrom1to1000 <- seq(1,1000)
 intfrom1to1000
 
 #8.5 a
 
  alldata8.1to.4 <- length(oneto100) + length(twentyto60) + length(twentyto60mean) + length(totalof51to91)
  alldata8.1to.4
  
 #8.5 b
  
  alldata8.1to.4 <- length(oneto100) + length(twentyto60) + length(twentyto60mean) + length(totalof51to91)
  alldata8.1to.4
  
 #8.5 c
  
  newMax <- seq(1,10)
  Maxus <- max(newMax)
  Maxus
  
 #9. Print a vector with the integers between 1 and 100 that are not divisible by 3, 5 and 7
  #using filter option.
  #filter(function(i) { all(i %% c(3,5,7) != 0) }, seq(100))
  
  newOneto100 <- seq(100)
  
  #Filter(newOneto100 == 3,5,7 & )
  
  newOneto100no357 <- Filter(function(i) { all(i %% c(3,5,7) != 0) }, newOneto100)
  newOneto100no357
  
 #10 Generate a sequence backwards of the integers from 1 to 100.
  
    back100to1 <- seq(100,1)
    back100to1
  
 #11List all the natural numbers below 25 that are multiples of 3 or 5.
    
    listof24to1 <- seq(24,1)
    newlistof24to1 <-  Filter(function(i) { all(i %% 3 == 0 | i %%  5 == 0 )!=0}, listof24to1)
    newlistof24to1
    
    summednewlistif24to1 <- sum(newlistof24to1)
    summednewlistif24to1
  
 #11.a How many data points from 10 to 11?
    
    dataofnewlistof24to1 <- length(newlistof24to1)+ length(back100to1) + listof24to1
    dataofnewlistof24to1
    
 #11.b Write the R code and its output from 10 and 11.
    
    #for num 10
    back100to1 <- seq(100,1)
    back100to1
    
    #for num11
    listof24to1 <- seq(24,1)
    newlistof24to1 <-  Filter(function(i) { all(i %% 3 == 0 | i %%  5 == 0 )!=0}, listof24to1)
    newlistof24to1
    
    summednewlistif24to1 <- sum(newlistof24to1)
    summednewlistif24to1
    
  #12
    # Enter this statement:
    
    { x <- 0 
      + x + 5 + }
    
    # Describe the output.
      #Error: unexpected '}' in "  { x <- 0 + x + 5 + }"
      #it was an error because it was incomplete block of code with a missing number after the '+' sign or you could just remove the '+' to make it work.
      #Also you could remove the last bracket '}' to make it not error
 
 #13 *Set up a vector named score, consisting of 72, 86, 92, 63, 88, 89, 91, 92, 75,
  #75 and 77. To access individual elements of an atomic vector, one generally uses the x[i]
  #construction.
    
    #Find x[2] and x[3]. Write the R code and its output.
    score <- c(72, 86, 92, 63, 88, 89, 91, 92, 75,
               75, 77)
    
    scoreof2 <- score[2]
    scoreof3 <- score[3]
    scoreof2
    scoreof3
    
 #14 Create a vector a = c(1,2,NA,4,NA,6,7).
      a <- c(1,2,NA,4,NA,6,7)
      
 #14.a Change the NA to 999 using the codes print(a,na.print="-999").
      print(a,na.print="999")
      
 #14.Write the R code and its output. Describe the output.
      print(a,na.print="999")
      # it change the "NA" to 999
      
  #15
      
      name = readline(prompt="Input your name: ")
      #here it ask the user to input it name and using the readline and the readline put in as a variable to enviroment
      
      age = readline(prompt="Input your age: ")
      #here it akl the age of the user and input it
      
      print(paste("My name is",name, "and I am",age ,"years old."))
      #here it prints the name and age of the user after getting it name and age 
      print(R.version.string)
      #print the version of the r
     