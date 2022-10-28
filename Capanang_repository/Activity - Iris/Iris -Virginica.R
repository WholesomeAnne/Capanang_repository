#data(iris)
data(iris)


#Subsetting Setosa
virginicaSubset <- subset(iris, Species == 'virginica' )
virginicaSubset

virginicaSepalLength <- virginicaSubset$Sepal.Length
virginicaSepalLength

virginicaSepalWidth <- virginicaSubset$Sepal.Width
virginicaSepalWidth

virginicaPetalLength <- virginicaSubset$Petal.Length
virginicaPetalLength

virginicaPetalWidth <- virginicaSubset$Petal.Width
virginicaPetalWidth


#Getting the total mean for Setosa
total <- c(virginicaPetalLength, virginicaPetalWidth, virginicaSepalLength, virginicaSepalWidth)
total

totalMean <- mean(total)
totalMean


#Getting the mean of each characteristics
sepLengthMeanV <- mean(virginicaSepalLength)
sepLengthMeanV

sepWidthMeanV <- mean(virginicaSepalWidth)
sepWidthMeanV

petLengthMeanV <- mean(virginicaPetalLength)
petLengthMeanV

petWidthMeanV <- mean(virginicaPetalWidth)
petWidthMeanV

