#Grace Anne Capanang
#BSIT-2A

#USING VECTORS

#1 
#There is a built-in vector LETTERS contains the uppercase letters of the alphabet and letters which contains the lowercase letters of the alphabet.

UPPERCASE <- LETTERS
UPPERCASE
lowercase <- letters
lowercase

#Based on the above vector LETTERS:

  #1a. 
  UPPERCASE_First11 <- LETTERS[c(1:11)]
  UPPERCASE_First11


  #1b. 
  odd <- LETTERS[(1:26 %% 2 == 1)]
  odd


  #1c. 
  Vowels <- LETTERS[c(1, 5, 9, 15, 21)]
  Vowels



#Based on the above vector letters:

  #1d. 

  lowercaseLastFive <- letters[c(22:26)]
  lowercaseLastFive

  #1e. 
  lettersInBtetween <- letters[c(15:24)]
  lettersInBtetween


#2. 


  #2a. 
  city <- c("Tuguegarao City", "Manila", "Iloilo City", "Tacloban", "Samal Island", "Davao City") 
  city

  #2b. 
  temp <- c(42, 39, 34, 34, 30, 27)
  temp
  
  #2c. 
  names(temp) <- city
  temp
  
  #2e. From the answer in d, what is the content of index 5 and index 6? What is its R code?
  five_six <- temp[5:6]
  five_six
  
#USING MATRICES
  
#2.Create a matrix of one to eight and eleven to fourteen with four columns and three rows.

  #2a.  will be the R code for the #2 question and its result?
  FourColThreeRow <- matrix(c(1:8, 11:14), ncol = 4, nrow = 3)
  FourColThreeRow
  
  #2b. Multiply the matrix by two. What is its R code and its result?
  TimesTwo <- FourColThreeRow * 2
  TimesTwo
  
  #2c. What is the content of row 2? What is its R code?
  RowTwo <- TimesTwo[2, ]
  RowTwo

  #2d. What will be the R code if you want to display the column 3 and column 4 in row 1 and row 2? What is its output?
  MixColRow <- TimesTwo[1:2, c(3, 4)]
  MixColRow
  
  #2e. What is the R code is you want to display only the columns in 2 and 3, row 3? What is its output?
  ColumnThreeRowThree <- TimesTwo [3, c(2, 3)]
  ColumnThreeRowThree
  
  #2f. What is the R code is you want to display only the columns 4? What is its output?
  ColumnFour <- TimesTwo [,4 ]
  ColumnFour
  
  #2g. Name the rows as isa, dalawa, tatlo and columns as uno, dos, tres, quatro for the matrix that was created in b.‘. What is its R code and corresponding output?
   TimesTwo
   dimnames(TimesTwo) <- list(c("isa", "dalawa", "tatlo"), c("uno", "dos", "tres", "quatro"))
   TimesTwo
  
  #2h. From the original matrix you have created in a, reshape the matrix by assigning anew dimension with dim(). New dimensions should have 2 columns and 6 rows. What will be the R code and its output?
    dim(FourColThreeRow) <- c(6, 2)
    FourColThreeRow
    
  
#USING ARRAYS

    #3.
   arrayElements <- c( 1, 2, 3, 6, 7, 8, 9, 0, 3, 4, 5, 1)
   arrayElements
   

   #3a. Create an array for the above numeric values. Each values will be repeated twice. What will be the R code if you are to create a three-dimensional array with 4 columns and 2 rows. What will be its output?
   ArraySample <- array(arrayElements, dim = c(3, 4, 3))
   ArraySample
   
   
   #3b.
   dim(ArraySample)
   
   #3c.
   dimnames(ArraySample) <- list (letters[1:3], LETTERS[1:4], c("1st-Dimensional Array", "2nd-Dimensional Array", "3rd-Dimensional Array"))
   ArraySample
   
  