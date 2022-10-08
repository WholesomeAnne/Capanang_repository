#Grace Anne Capanang BSIT-2A WORKSHEET 1

#1. a vector named age
age <- c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27, 22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 42, 53, 41, 51, 35, 24, 33, 41)
age

#2. reciprocal numbers of the values(age)
library(MASS)
reciprocal_number <- 1/age
reciprocal_number

#3. new age
new_age <- c(age, 0, age)
new_age


#4. sorting the values of age
sort(age)

#5. minimum and maximum value for the age
min(age)
max(age)

#6. a vector named data
data <- c(2.4, 2.8, 2.1, 2.5, 2.4, 2.2, 2.5, 2.3, 2.5, 2.3, 2.4, 2.7)
data
data.frame(data)
length(data)

#7. doubling every value of the data
double_value <- data*2
double_value

#sequence
#8.1integer from 1 to 100
1:100
#8.2numbers from 20 to 60
seq(20, 60)

#8.3 mean 
twoSixty <- 20:60
twoSixty
mean((twoSixty))

#8.4 sum
Total <- 51:91
Total
sum((Total))

#8.5 bigNumba
integer <- seq(1, 1000)
integer

#a. data points from integer 1:100 to sum total of 51:91
#8.1
data.frame(1:100)
#equals to 100 data points

    #8.2
    data.frame(20:60)
    #equals to 41 data points

        #8.3
        data.frame(mean(20:60))
        #equals to 1 data point

            #8.4
            data.frame(sum(51:91))

                #data points from 8.1 to 8.4 is total to 143 data points.



#c. 8.5 maximum data points until 10
max(1:10)

#9. using filter option
filter(function(i) { all(i %% c(3,5,7) != 0) } seq(100))
  #results in error
Filter(function(i) { all(i %% c(3,5,7) != 0) }, seq(100))
  #if F in filter is capitalize, the code works 

#10. backward sequence
backwards <- 100:1
backwards

#11. Sum of the multiples
sum((1 : 25)[((1 : 25)%%3 == 0) | ((1:25)%%5 == 0)])

#11.a. There are 101 data points from items 10 to 11.

#11.b
data.frame(100:1)
data.frame(sum((1 : 25)[((1 : 25)%%3 == 0) | ((1:25)%%5 == 0)]))



#12. block problem
{ x <- 0+ x + 5 + }
#outputs an error. It says that there is an unexpected brace ( } ) in the statement. But if you remove the brace in the end or add a number after the plus there is no error prompt in the code. 


#13. score
score <- c(72, 86, 92, 63, 88, 89, 91, 92, 75,75, 77)
score[2]
score[3]

#14
a <- c(1,2,NA,4,NA,6,7)
a
print(a,na.print="-999")
#In the output all the two elements that is ‘NA’ changed their value to ‘-999’.

#15. 
name = readline(prompt="Input your name: ") 
age = readline(prompt="Input your age: ")
print(paste("My name is",name, "and I am",age ,"years old.")) 
print(R.version.string)


