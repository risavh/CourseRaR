pollutantmean <-function(directory,popullant,id){
  file_in_dir<- list.files(directory)
  v1 <- data.frame("Date"=NA	,"sulfate"=NA,	"nitrate"=NA	,"ID"=NA)
  
  for (filename in file_in_dir)
  {
    df<- read.csv(filename,header=T)
    v1 <- rbind(v1,df)
    
  }
  
  val <- subset(v1,v1$ID %in% id,select=popullant)
  mean_val <- mean(val[!is.na(val)])
  print(mean_val)
  
  #nrow(val)
}

pollutantmean("C:\\DAily\\useless\\RR\\coursera\\specdata","sulfate",1:10)
pollutantmean("C:\\DAily\\useless\\RR\\coursera\\specdata","nitrate",70:72)
pollutantmean("C:\\DAily\\useless\\RR\\coursera\\specdata","nitrate",23)