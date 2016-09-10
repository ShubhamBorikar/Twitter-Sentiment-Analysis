setwd("C:/Shubham/projectstobeone/twittersentimentanalysis")

install.packages('twitteR',dependencies = T)

library(twitteR)
library(plyr)
require(RCurl)
require(base64enc)

consumer_key <- 'SROFJgvtUjFPK00Ue2yx0Qmp5'
consumer_secret <- 'K62rg2y1YOPSLFOTRJW7yppeHEguHLMQArAovDOJyX0dZe5LdY'
access_token <- '2356577120-LRSg7XomwsG0NsOs8Ah0mKq7fTR8R0Hi258pIYW'
access_secret <- 'doknp4Svce9cExKgAQ69sHE7ujRyyw8oSCmluo8zenlb1'

setup_twitter_oauth(consumer_key, consumer_secret, access_token, access_secret)

tweets <-searchTwitter("holi",10, lang = "en")
tweets