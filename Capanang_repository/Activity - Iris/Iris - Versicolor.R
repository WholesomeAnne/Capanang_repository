#data(iris)
data(iris)


#Subsetting Versicolor
versicolorSubset <- subset(iris, Species == 'versicolor' )
versicolorSubset

versicolorSepalLength <- versicolorSubset$Sepal.Length
versicolorSepalLength

versicolorSepalWidth <- versicolorSubset$Sepal.Width
versicolorSepalWidth

versicolorPetalLength <- versicolorSubset$Petal.Length
versicolorPetalLength

versicolorPetalWidth <- versicolorSubset$Petal.Width
versicolorPetalWidth


#Getting the total mean for Setosa
total <- c(versicolorPetalLength, versicolorPetalWidth, versicolorSepalLength, versicolorSepalWidth)
total

totalMean <- mean(total)
totalMean


#Getting the mean of each characteristics
sepLengthMeanVe <- mean(versicolorSepalLength)
sepLengthMeanVe

sepWidthMeanVe <- mean(versicolorSepalWidth)
sepWidthMeanVe

petLengthMeanVe <- mean(versicolorPetalLength)
petLengthMeanVe

petWidthMeanVe <- mean(versicolorPetalWidth)
petWidthMeanVe

