setwd("C:/Shubham/projectstobeone/twittersentimentanalysis")
library(twitteR)
library(plyr)
require(RCurl)
require(base64enc)
consumer_key <- 'SROFJgvtUjFPK00Ue2yx0Qmp5'
consumer_secret <- 'K62rg2y1YOPSLFOTRJW7yppeHEguHLMQArAovDOJyX0dZe5LdY'
access_token <- '2356577120-LRSg7XomwsG0NsOs8Ah0mKq7fTR8R0Hi258pIYW'
access_secret <- 'doknp4Svce9cExKgAQ69sHE7ujRyyw8oSCmluo8zenlb1'
setup_twitter_oauth(consumer_key, consumer_secret, access_token, access_secret)
tweets <-searchTwitter("dell",20, lang = "en")
tweets
hu.liu.pos = scan('positive-words.txt',what='character', comment.char=';')
hu.liu.neg = scan('negative-words.txt',what='character', comment.char=';')
pos.words = c(hu.liu.pos, 'upgrade')
neg.words = c(hu.liu.neg, 'wtf', 'wait', 'waiting','epicfail', 'mechanical')
text = laply(tweets, function(t) t$getText())
source('sentiment.r')
score = score.sentiment(text, pos.words, neg.words)
hist(score$score)