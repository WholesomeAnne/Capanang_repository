#data(iris)
data(iris)


#Subsetting Setosa
setosaSubset <- subset(iris, Species == 'setosa' )
setosaSubset

setosaSepalLength <- setosaSubset$Sepal.Length
setosaSepalLength

setosaSepalWidth <- setosaSubset$Sepal.Width
setosaSepalWidth

setosaPetalLength <- setosaSubset$Petal.Length
setosaPetalLength

setosaPetalWidth <- setosaSubset$Petal.Width
setosaPetalWidth


#Getting the total mean for Setosa
total <- c(setosaPetalLength, setosaPetalWidth, setosaSepalLength, setosaSepalWidth)
total

totalMean <- mean(total)
totalMean


#Getting the mean of each characteristics
sepLengthMeanS <- mean(setosaSepalLength)
sepLengthMeanS

sepWidthMeanS <- mean(setosaSepalWidth)
sepWidthMeanS

petLengthMeanS <- mean(setosaPetalLength)
petLengthMeanS

petWidthMeanS <- mean(setosaPetalWidth)
petWidthMeanS

