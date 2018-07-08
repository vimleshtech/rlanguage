setwd('C:\\Users\\vkumar15\\Desktop\\backup')

sentences<-scan("testdata.txt","character",sep="\n");

#Replace full stop and comma
sentences<-gsub("\\.","",sentences)

sentences<-gsub("\\,","",sentences)

#Split sentence
words<-strsplit(sentences," ")

#Calculate word frequencies
words.freq<-table(unlist(words));
cbind(names(words.freq),as.integer(words.freq))

barplot(words.freq,col="red")
