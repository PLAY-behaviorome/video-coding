# https://www.r-bloggers.com/building-wordclouds-in-r/

library(tm)
library(SnowballC)
library(wordcloud)

mom.words <- transcript %>% 
  filter(speaker == "m") %>% 
  select(content)

mom.corpus <- Corpus(VectorSource(mom.words))

mom.corpus <- tm_map(mom.corpus, PlainTextDocument)
mom.corpus <- tm_map(mom.corpus, removePunctuation)
mom.corpus <- tm_map(mom.corpus, removeWords, stopwords('english'))
mom.corpus <- tm_map(mom.corpus, stemDocument)

wordcloud(mom.corpus, max.words = 100, random.order = FALSE)