
# 1) corupus/documents
# 2)preprocessing
# 3)stop words/common words
# 4)DTM-document term matrix
# 5)text analysis and visualization - (word cloud)

install.packages("tm") #for text mining
install.packages("SnowballC") #for text stemming
install.packages("wordcloud") #way of representing graphically


library(tm)
library("SnowballC")
library("wordcloud")
library("RColorBrewer")
txt <- read.csv(file.choose())
corp<-iconv(txt$sentence)

corp <- Corpus(VectorSource(corp))
inspect(corp[1:5])

#preprocessing 
corp<-tm_map(corp,content_transformer(tolower))
inspect(corp[1:5])
#remove numbers
corp<-tm_map(corp,removeNumbers)
inspect(corp[1:5])
#remove stop words(common English words)
corp<-tm_map(corp,removeWords,stopwords("english"))
stopwords("english")
inspect(corp[1:5])

#remove punctuations
corp<-tm_map(corp,removePunctuation)
inspect(corp[1:5])
#remove extra white spaces
corp<-tm_map(corp,stripWhitespace)
inspect(corp[1:5])




#create tdm contains the frequency of the words
corp<-TermDocumentMatrix(corp)
corp
corp<-as.matrix(corp)
corp
srt<-sort(rowSums(corp))# ascending order
srt
St<-sort(rowSums(corp), decreasing = TRUE) #descending order
d<-data.frame(word=names(srt),freq=srt)
View(d)
wordcloud(d$word,d$freq,random.order=FALSE,
          rot.per=0.6,scale=c(4,.5),min.freq = 1,  
          max.words=200,
          colors=brewer.pal(5,"Dark2"))

