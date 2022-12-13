#GRACE ANNE CAPANANG BSIT-2A
#WORKSHEET 7

#1
Students <- seq (1, 10)
PreTest <- c (55,54,47,57,51,61,57,54,63,58)
PostTest <- c (61,60,56,63,56,63,59,56,62,61)

studentsGrades <- data.frame(
  Students,
  PreTest,
  PostTest)
studentsGrades

#1a
 library(Hmisc)
 library(pastecs)

??Hmisc.Overview
??pastecs

#descriptive statistic using Hmisc package
hmiscStat <- describe(studentsGrades)
hmiscStat

#decriptive statistic using the pastecs package
pastecsStat <- stat.desc(studentsGrades)
pastecsStat

#2

fertilizerLevel <- factor(c(10, 10, 10, 20, 20, 50, 10, 20, 10, 50, 20, 50, 20, 10),
                    ordered = TRUE)
fertilizerLevel
class(fertilizerLevel)

orderFertlizerLevel <- sort (fertilizerLevel)
orderFertlizerLevel

# describe the result:
# the result of sort outputs the values in ascending order, and the levels shows the inequality (<) of the values.


#3a

exerciseLevels <- c("l", "n", "n", "i", "l", "l", "n", "n", "i", "l")
exerciseLevels

factorLevels <- factor(exerciseLevels)
factorLevels

levels(factorLevels) <- c("intense", "light", "none")
factorLevels


#4a

state <- c("tas", "sa", "qld", "nsw", "nsw", "nt", "wa", "wa", "qld",
           "vic", "nsw", "vic", "qld", "qld", "sa", "tas", "sa", "nt",
           "wa", "vic", "qld", "nsw", "nsw", "wa", "sa", "act", "nsw",
           "vic", "vic", "act")
state

factoredDataStateAccountants <- factor(state)
factoredDataStateAccountants

#describe the result
#the factor function in this item arranged the values of the variable state alphabetically and sorted them or leveled them.

stateAccountantLevels <-levels(factoredData)
stateAccountantLevels
#describe the result
#the result outputs the sorted values from previous number in character form because of the quotation marks (""), and the 'Levels' that can be seen in the output from factor function is now gone. 


#5

incomes <- c(60, 49, 40, 61, 64, 60, 59, 54,
             62, 69, 70, 42, 56, 61, 61, 61, 58, 51, 48,
             65, 49, 49, 41, 48, 52, 46, 59, 46, 58, 43)
incomes

incmeans <- tapply(incomes, factoredDataStateAccountants, mean)
incmeans

#interpret the result:
# the tapply function in this item calculated the mean of the factored State accountants' income. 


#6

stdError <- sqrt(var(incmeans)/length(incmeans))
stdError

#another method for #6

incMeansSD <- sqrt(var(incmeans)) #mean
incMeansSD
sd(incmeans)

length(incmeans) #size

standardError <- incMeansSD / sqrt(8) #standard error
standardError

incster <- tapply(incomes, factoredDataStateAccountants, stdError)
incster

#interpret the result:
#in this item the standard error of the factored State accountants' income is produce in the output. 


#7
data(Titanic)

titanicDataFrame <- data.frame(Titanic)
titanicDataFrame

titanicSurvived <- subset(titanicDataFrame, Survived == "Yes")
titanicSurvived

titanicDidntSurvived <- subset(titanicDataFrame, Survived == "No")
titanicDidntSurvived

#8

#8a 
#describe what is the dataset all about.
#the dataset is about a database of Dr. Wolberg's breast cancer clinical cases samples.

#8b
getwd()
install.packages("readxl")
library(readxl)
library(plotrix)

brstCancerData <- read_excel('C:\\ANOTHER\\NEECHAN\\PracticeGit\\#3b, 4, 5\\Worksheet 7\\breastCancer.xlsx')
brstCancerData

brstCancerDataFrame <- data.frame(brstCancerData)
brstCancerDataFrame

#8c.1

clumpThickness <- subset(brstCancerDataFrame, select = CL..thickness)
clumpThickness
std.error(clumpThickness)

std.error(brstCancerDataFrame$CL..thickness)

#8c.2
marginalAdhessionCV <- sd(brstCancerDataFrame$Marg..Adhesion) / mean(brstCancerDataFrame$Marg..Adhesion) * 100
marginalAdhessionCV

#8c.3

var <- subset(brstCancerDataFrame, select = Bare..Nuclei)
var

sum(is.na(var))

#8c.4
blChromatinSD <- sqrt(var(brstCancerDataFrame$Bl..Cromatin))
blChromatinSD

blChromatinMean <- mean(brstCancerDataFrame$Bl..Cromatin)
blChromatinMean

#8c.5

s = length(brstCancerDataFrame$Cell.Shape) #size
s

meanCS <- mean(brstCancerDataFrame$Cell.Shape) #mean
meanCS

csSD <- sqrt(var(brstCancerDataFrame$Cell.Shape)) #standard deviation
csSD
sd(brstCancerDataFrame$Cell.Shape)

standardError <- csSD / sqrt(s) #standard error
standardError

alpha = 0.05
degrees_of_freedom = s - 1
t_score = qt(p=alpha/2, df=degrees_of_freedom,lower.tail=F)
print(t_score)

marginError <- t_score * standardError #margin error
marginError

lowerBound <- meanCS - marginError
lowerBound

upperBound <- meanCS + marginError
upperBound

#lower and upper bounds of confidence interval
lowerBound
upperBound

#8d
attributesNumber <- attributes(brstCancerDataFrame)
attributesNumber

#8e
subsetting <- subset(brstCancerDataFrame, Class=="malignant")
subsetting

classVar <- (brstCancerData$Class)
classVar

malignant <- length(subsetting)
malignant
variableClass <- length(classVar)
variableClass

options (digits = 4)
percentage <- (malignant * 100) / variableClass
percentage

#Interpret the results.
#In this item we got the number of patients whose their type of cancer is malignant by subsetting.
#And then we got the percentage of the malignant patients from the subsetted variable multiply to 100 and divided by the overall number of respondents.


#9

library(AppliedPredictiveModeling)
data("abalone")

library(xlsx)
write.xlsx(abalone, "abalone.xlsx")
View(abalone)
head(abalone)
summary(abalone)

