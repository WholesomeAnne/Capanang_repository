#Grace Anne Capanang BSIT-2A


library(ggplot2)
data("mpg")
str(mpg)
library(dplyr)
glimpse(mpg)

ggplot(mpg, aes(cty, hwy)) +
  geom_point()

#1
mpgNumOfCol <- ncol(mpg)
mpgNumOfCol
mpgNumOfRows <- nrow(mpg)
mpgNumOfRows

mpgColRow <- glimpse(mpg)
mpgColRow

# The number of rows in mpg dataset is 234, and the number of columns is 11.

#2

mostNumberManufacturer <- table(mpg$manufacturer)
mostNumberManufacturer
# The manufacturer named 'Dodge' has the most models in the data set, consisting of 37 models. 

mostNumberModel <- table(mpg$model)
mostNumberModel

anotherMeth <- mpgColRow %>%
  group_by(model) %>%
  count()
anotherMeth
# The model who has the most variations is the 'caravan 2wd', having 11.

#2a

groupResult <- mpgColRow %>% 
  group_by(manufacturer, model) %>%
  distinct() %>% count()
groupResult

colnames(grpManufacturer) <- c("manufacturer", "model", "counts")

#2b

plot (groupResult)

ggplot(groupResult, 
       aes(x = manufacturer, y = model)) + 
  geom_point (color = 'blue')


#3a

ggplot(mpg, aes(model, manufacturer)) + geom_point()
#The plot shows a scatter plot displaying the relationship between car manufacturer and model of the the mpg data set; a variety of car models and what manufacturer they belong into. 

#3b
ggplot(mpg, aes(manufacturer, model)) + geom_count()
# To make it look more informative and neat, putting the model in the x-axis part is better because there are many of them and if you put them in the y-axis the names become incomprehinsible, thus changing their axis position is a must.
# Using geom_count() than geom_point() delivers more information because it serves as a guide to the models' count to the manufacturer they are categorized into.

#4a

mpgModel <- mpgColRow %>% 
  group_by(model) %>% count()
mpgModel

colnames(mpgModel) <- c("model", "counts")

qplot(model,data = mpgColRow, 
      main = "Number of Cars per Model",
      xlab = "Model",
      ylab = "Number of Cars", 
      geom = "bar", 
      fill = manufacturer) + coord_flip()

#4b
firstTwenty <- mpgModel[1:20,] %>% 
  top_n(2)
firstTwenty

ggplot(firstTwenty,
       aes(x = model, y = counts)) + 
       geom_bar (stat = "Identity") + coord_flip()


#5a

ggplot(data = mpgColRow,
       mapping = aes(x = displ, y = cyl,main = "Relationship Between No. of Cylinders and Engine Displacement")) +
       geom_point (mapping = aes(colour = "engine displacement"))

#5b
# Engine displacement is how the car's engine can powers the car by how much air and fuel it can displace. And larger cylinders means more air.
# Hence, the relationship between the number of cylinders and the engine displacement is that the greater the number of the cylinder, the bigger the engine displacement, the more power it can create. If the model has smaller number of cylinder, the engine displacement is small too, and the less power it create but also the lesser the fuel it consume.

#6a
ggplot(data = mpgColRow, 
       mapping = aes(x = drv, y = class)) +
  geom_tile (aes(fill=class))

##Claire de Lune 

#6b
# The data shows a tile graph wherein most of the car's class have a 4-wheel drive as type of drive train, and the least of the class' drive train have is the rear-wheel drive. 

#7
#1st code
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, colour = "blue"))

#2nd code
ggplot(data = mpg) +
   geom_point(mapping = aes(x = displ, y = hwy), colour = "blue")

# The difference between the two code is the color of the geom point. In the first code the colour did not apply to the graph.
# While in the second code the colour 'blue' is successfully used as a guide to the graph. 
# In the code, the colour must be not inside the aesthetic in order for it to be successfully use in the graph we'll make.

#8a

?mpg

# The manufacturer, model, trans, drv, fl, and class are the categorical variable from the dataset because they are characters which values are limited and specific. 

#8b
# The displ, year, cyl, cty, and hwy are the continous variable because they are numeric and have infinite values which you cannot categorize.

#8c
ggplot(data = mpgColRow,
       mapping = aes(x = displ, y = hwy)) +
  geom_point (mapping = aes(colour = "displ"))
# The plot reveals the relationship between the car's engine displacement and the highway per gallons it consume.  

#9
ggplot(data = mpgColRow, mapping = aes(x = displ, y = hwy)) +
  geom_point(mapping=aes(color=class)) +
  geom_smooth(se = FALSE)

#10
ggplot(data = mpgColRow, mapping = aes(x = displ, y = hwy)) +
  geom_point(mapping=aes(color=class)) +
  geom_smooth(se = FALSE, method = lm)
