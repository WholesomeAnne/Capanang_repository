#DATA SCIENCE - CS101
---------------------------------------------------------------------
#INDIVIDUAL PROJECT #1
#Grace Anne Capanang BSIT-2A


install.packages("twitteR")
install.packages("tm")
install.packages("plotly")

getwd()
library(plotly)
library(tm)
library(ggplot2)
library(twitteR)
library(dplyr)
library(rtweet)

CONSUMER_KEY <- "keJy8ZjWZUNLx5waAIXnMKqkM"
CONSUMER_SECRET <- "TjtCidpOXtnjN4Bk5biJ3TpnnS5uatuaTMwBc01QiNPOGWuo5W"
ACCESS_TOKEN <- "1592474750000865282-IzNkw4GOx9XZA9bwRObofstbeOW2Os"
ACCESS_SECRET <- "qUcG8hpyiSaxzuDFy5tI4uMOoRUplN6p2Q58JV53Jb4SP"

setup_twitter_oauth(consumer_key = CONSUMER_KEY,
                    consumer_secret = CONSUMER_SECRET,
                    access_token = ACCESS_TOKEN,
                    access_secret = ACCESS_SECRET)

Tweets <- searchTwitter("#cats -filter:retweets",
                        n=10000,
                        since="2022-11-22",until="2022-11-30",
                        lang="en",
                        retryOnRateLimit=120)


trendTweetsDF <- twListToDF(Tweets)
class(trendTweetsDF)
names(trendTweetsDF)
View(trendTweetsDF)
head(trendTweetsDF)[1:5]
head(trendTweetsDF$text)[1:5]


subsetTweets <- trendTweetsDF %>%
  select(screenName, text, created, statusSource)
save(subsetTweets, file = "tweetsDF.Rdata")

#Plotting the time series with legends

trendTweetsDF %>%  
  group_by(1) %>%  
  summarise(max = max(created), min = min(created))


ggplot(data = trendTweetsDF, aes(x = created)) +
  geom_histogram(aes(fill = ..count..)) +
  theme(legend.position = "right") +
  xlab("Time") + ylab("Number of tweets") + 
  scale_fill_gradient(low = "darkgreen", high = "grey")


ts_plot(trendTweetsDF, "hours") +
  labs(x = NULL, y = NULL,
       title = "Frequency of tweets with a #cats hashtag",
       subtitle = paste0(format(min(trendTweetsDF$created), "%d %B %Y"), " to ", 
                         format(max(trendTweetsDF$created),"%d %B %Y")),
       caption = "Data collected from Twitter's REST API via twitteR") +
  theme_classic()


#Plotting the source

deviceSource <- function(x) {
  if(grepl(">Twitter for iPhone</a>", x)){
    "iphone"
  }else if(grepl(">Twitter for iPad</a>", x)){
    "ipad"
  }else if(grepl(">Twitter for Android</a>", x)){
    "android"
  } else if(grepl(">Twitter Web Client</a>", x)){
    "Web"
  } else if(grepl(">Twitter for Windows Phone</a>", x)){
    "windows phone"
  }else if(grepl(">dlvr.it</a>", x)){
    "dlvr.it"
  }else if(grepl(">IFTTT</a>", x)){
    "ifttt"
  }else if(grepl(">Facebook</a>", x)){
    "facebook"
  }else {
    "others"
  }
}

trendTweetsDF$deviceSource = sapply(trendTweetsDF$statusSource, 
                              deviceSource)

tweet_appSource <- trendTweetsDF %>% 
  select(deviceSource) %>%
  group_by(deviceSource) %>%
  summarize(count=n()) %>%
  arrange(desc(count)) 

ggplot(trendTweetsDF[trendTweetsDF$deviceSource != 'others',], aes(deviceSource, fill = tweetSource)) +
  geom_bar() +
  theme(legend.position="right",
        axis.title.x = element_blank(),
        axis.text.x = element_text(angle = 45, hjust = 1)) +
  ylab("Number of Tweets") +
  ggtitle("Cats Tweets by Source")

#wordcloud for screenName

tweet_appScreen <- trendTweetsDF %>%
  select(screenName) %>%
  group_by(screenName) %>%
  summarize(count=n()) %>%
  arrange(desc(count)) 

namesCorpus <- Corpus(VectorSource(trendTweetsDF$screenName))  #using ScreenName
class(trendTweetsDF$screenName)

library(wordcloud)

pal <- brewer.pal(8, "Dark2")
pal <- pal[-(1:4)]
set.seed(123)

par(mar = c(0,0,0,0), mfrow = c(1,1))

wordcloud(words = namesCorpus, scale=c(3,0.5),
          max.words=500,
          random.order=FALSE,
          rot.per=0.5,
          use.r.layout=TRUE,
          colors=pal)
