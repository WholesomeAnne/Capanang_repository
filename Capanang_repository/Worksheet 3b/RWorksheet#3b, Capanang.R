#1a

getwd()

Respondents <- seq(1:20)
Sex <- rep(c(2, 1, 2, 1, 2, 1, 2), c(2, 1, 7, 1, 7, 1, 1))
Fathers_Occupation <- c(1, 3, 3, 3, 1, 2, 3, 1, 1, 1, 3, 2, 1, 3, 3, 1, 3, 1, 2, 1)
Persons_at_Home <- c(5, 7, 3, 8, 5, 9, 6, 7, 8, 4, 7, 5, 4, 7, 8, 8, 3, 11, 7, 6 )
Siblings_at_School <- c(6, 4, 4, 1, 2, 1, 5, 3, 1, 2, 3, 2, 5, 5, 2, 1, 2, 5, 3, 2)
Types_of_Houses <- c(1, 2, 3, 1, 1, 3, 3, 1, 2, 3, 2, 3, 2, 2, 3, 3, 3, 3, 3, 2)


Profile <- data.frame (
  Respondents,
  Sex,
  Fathers_Occupation,
  Persons_at_Home,
  Siblings_at_School,
  Types_of_Houses
)
Profile

#1b
#Describe the data and get the summary of the data
#Answer: 

summary(Profile)

#1c Is the mean number of siblings attending is 5?
siblingsAtSchoolMean <- mean(Siblings_at_School)
siblingsAtSchoolMean

# Answer: No, the mean number of siblings attending school is 2.95

#1d

Row1stAllCol <- subset(Profile[1:2, 1:6])
Row1stAllCol

#1e

RowThrFifthColSecoFourth <- subset (Profile[c(3,5), c(2,4)])
RowThrFifthColSecoFourth

#1f

types_houses <- Profile$Types_of_Houses
types_houses

#1g
farmer <- subset(Profile, Fathers_Occupation == '1')
farmer
MalesRespondentFarmerFathers <- subset(farmer, Sex == '1')
MalesRespondentFarmerFathers


#1h
Females_respondent <- subset(Profile, Sex == '2')
Females_respondent
FemaleSiblingsMoreThanFive <- subset(Females_respondent, Siblings_at_School >= '5')
FemaleSiblingsMoreThanFive


#2

df <- data.frame (
  Ints = integer(),
  Doubles=double(), 
  Characters = character(),
  Logicals=logical(),
  stringsAsFactors = FALSE
)

print ("Structures of the empty dataframe: ")
print(str(df))

#2a. Describe the results.

# Answer: The output in this item is: there is no objects inside the data frame. There are four variables namely 'Ints', 'Doubles', 'Characters' and 'Logicals' but there are no data inside them. As it is, an empty dataframe. 



#3

Trumps_SentimentTweets <- "My interpretation of the graph about the tweets' sentiments per day of Donald Trump is that each day the count of negative sentiments dominates; means there is much more negative sentiments than positive and neutrals. And then it was followed by positive, and then neutral in ranking. In conclusion a lot of twitter user does not like Donald Trump as a politician, hence the negative opinions of him."
Trumps_SentimentTweets

