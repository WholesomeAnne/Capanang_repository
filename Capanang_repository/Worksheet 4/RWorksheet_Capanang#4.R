#Grace Anne Capanang BSIT-2A
#WORKSHEET 4


#1

ShoeSize <- c(6.5, 9.0, 8.5, 8.5, 10.5, 7.0, 9.5, 9.0, 13.0, 7.5, 10.5, 8.5, 12.0, 10.5, 13.0, 11.5, 8.5, 5.0, 10.0, 6.5, 7.5, 8.5, 10.5, 8.5, 10.5, 11.0, 9.0, 13.0)
ShoeSize

Height <- c(66.0, 68.0, 64.5, 65.0, 70.0, 64.0, 70.0, 71.0, 72.0, 64.0, 74.5, 67.0, 71.0, 71.0, 77.0, 72.0, 59.0, 62.0, 72.0, 66.0, 64.0, 67.0, 73.0, 69.0, 72.0, 70.0, 69.0, 70.0)
Height

Gender <- rep(c("F", "M", "F", "M", "F", "M", "F", "M", "M", "F", "M", "F", "M", "F", "M"), c(4, 1, 3, 1, 1, 1, 1, 2, 2, 2, 1, 2, 2, 1, 4))
Gender

ShoeCustomersProfile <- data.frame (
  ShoeSize,
  Height,
  Gender
)
ShoeCustomersProfile

#a. Describe the data
# The data is about the respondents' height, shoe size, and gender. These variables have connection to each other; it tells a story, such that males who have tall height have bigger shoe size than shorter males and tall females.

#b. Find the mean of shoe size and height of the respondents.
#Copy the codes and results.

shoeSizeMean <- mean(ShoeSize)
shoeSizeMean
heightMean <- mean(Height)
heightMean

#c. Is there a relationship between shoe size and height? Why?

maleOnes <- subset(ShoeCustomersProfile, Gender == "M")
maleOnes
maleHeightMean <- mean(maleOnes$Height)
maleHeightMean
maleShoeSizeMean <- mean (maleOnes$ShoeSize)
maleShoeSizeMean


FemaleOnes <- subset(ShoeCustomersProfile, Gender == "F")
FemaleOnes
FemaleHeightMean <- mean(FemaleOnes$Height)
FemaleHeightMean
FemaleShoeSizeMean <- mean (FemaleOnes$ShoeSize)
FemaleShoeSizeMean

# The result of the code above outputs the mean of each gender's height and shoe size. For Male, the shoe size' mean is 10.9, and the height's mean is 71.4. Meanwhile for Female, the shoe size' mean is 7.85, and the height's mean is 65.6. ano konek sa question

# I filter shoe sizes, one is with equal or less than 9 and the other one is sizes greater than nine. It shows that people with short height have smaller shoe size meanwhile those taller have bigger shoe size. 
sampleSmallShoeSize <- subset(ShoeCustomersProfile, ShoeSize <= 9)
sampleSmallShoeSize
smallSizeMean <- mean(sampleSmallShoeSize$ShoeSize)
smallSizeMean
sampleSmallHeightMean <- mean(sampleSmallShoeSize$Height)
sampleSmallHeightMean

sampleBigShoeSize <- subset(ShoeCustomersProfile, ShoeSize > 9)
sampleBigShoeSize
smallBigMean <- mean(sampleBigShoeSize$ShoeSize)
smallBigMean
sampleBigHeightMean <- mean(sampleBigShoeSize$Height)
sampleBigHeightMean

#2
months_vector <- c("March","April","January","November","January",
            "September","October","September","November","August",
            "January","November","November","February","May","August",
            "July","December","August","August","September","November","February","April")
months_vector

factor_months_vector <- factor(months_vector)
factor_months_vector

#3
monthsSummary <- summary(months_vector)
monthsSummary

factoredMonthsSummary <- summary(factor_months_vector)
factoredMonthsSummary

#4
Direction <- c("East", "West", "North")
Direction
Frequency <- c(1, 4, 3)
Frequency

factoredDirection <- factor(Direction)
factoredDirection
factoredFreq
uency <- factor(Frequency)
factoredFrequency

new_order_data <- factor(Direction,levels = c("East","West","North"))
print(new_order_data)

#5

readTable <- read.table("import_march.csv", header=TRUE, sep = ",")
readTable

readFile <- read.csv("C:/Users/User/OneDrive/Documents/import_march.csv")
View (readFile)
