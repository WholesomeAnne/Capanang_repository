#Grace Anne Capanang BSIT-2A
#WORKSHEET 5

#1a
Year <- c("1st", "2nd", "3rd", "4th")
Year
numberOfEnrolees <- c(80, 75, 70, 60)
numberOfEnrolees

barplot(numberOfEnrolees,                                       # Add labels to barplot
        names.arg = Year,
        col = "pink")

#1b

barplot(numberOfEnrolees,                                       # Add labels to barplot
        names.arg = Year,
        main = "Enrollment of BS Computer Science",
        xlab = "Curriculum Year",
        ylab = "number of students",
        col = "dark blue"
)


#2a
expenses <- c("Food", "Electricity", "Savings", "Miscelleneous Expenses")
howMuch <- c(60, 10, 5, 25)

Expenses <- data.frame(
  expenses,
  howMuch
)
Expenses

tableExpenses <- table(Expenses)
tableExpenses

#2b

equation <- round(howMuch/sum(howMuch) * 100, 1)
equation <- paste(data_per,"%",sep = "")

pieData <- pie(howMuch,
                main = "Month Data",
                col = rainbow(4),
                labels =  data_per, 
                cex = 0.8)
pieData

legend(1.5,1, 
       c("Food", "Electricity", "Savings", "Miscellaneous expenses"),
       cex = 0.5, 
       fill = rainbow(4))

#3a
data(mtcars)

mpgHistogram <- hist(mtcars$mpg)
mpgHistogram

#3b
coloredMpg <- hist(mtcars$mpg, breaks=12, col="red")
coloredMpg

#3c
x <- mtcars$mpg
h<-hist(x, breaks=10, col="red", xlab="Miles Per Gallon",
        main="Histogram with Normal Curve")
xfit<-seq(min(x),max(x),length=40)
yfit<-dnorm(xfit,mean=mean(x),sd=sd(x))
yfit <- yfit*diff(h$mids[1:2])*length(x)
lines(xfit, yfit, col="blue", lwd=2)

#4a
data("iris")

setosaSubset <- subset(iris, Species == 'setosa' )
setosaSubset
versicolorSubset <- subset(iris, Species == 'versicolor' )
versicolorSubset
virginicaSubset <- subset(iris, Species == 'virginica' )
virginicaSubset

#4b
setosa <- colMeans(setosaSubset[sapply(setosaSubset,is.numeric)])
setosa

versicolor <- colMeans(versicolorSubset[sapply(versicolorSubset,is.numeric)])
versicolor

virginica <- colMeans(virginicaSubset[sapply(virginicaSubset,is.numeric)])
virginica

#4c
rbindIrisData <- rbind(setosa, versicolor, virginica)
rbindIrisData

#4d

barplot(rbindIrisData, 
        beside = TRUE, 
        main = "Iris Data",
        xlab = "Characteristics",
        ylab = "Mean Scores",
        col = c("blue", "green", "yellow"),
        
)
