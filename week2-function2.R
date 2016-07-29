complete <-function(directory,id){
  library(plyr)
  file_in_dir<- list.files(directory)
  v1 <- data.frame("Date"=NA	,"sulfate"=NA,	"nitrate"=NA	,"ID"=NA)
  
  for (filename in file_in_dir)
  {
    df<- read.csv(filename,header=T)
    v1 <- rbind(v1,df)
    
  }
  
  val <- subset(v1,v1$ID %in% id & !is.na(v1$sulfate) & !is.na(v1$nitrate) & !is.na(v1$Date) & !is.na(v1$ID))
  #group_by_cnt<-count(val$sulfate,"id")
  group_by_cnt<-data.frame(table(val$ID))
  nm <-c("ID","nobs")
  names(group_by_cnt)<-nm
  print(group_by_cnt)
  
  #nrow(val)
}

complete("C:\\DAily\\useless\\RR\\coursera\\specdata", 1)
complete("C:\\DAily\\useless\\RR\\coursera\\specdata", c(2, 4, 8, 10, 12))
complete("C:\\DAily\\useless\\RR\\coursera\\specdata", 30:25)
complete("C:\\DAily\\useless\\RR\\coursera\\specdata", 3)


