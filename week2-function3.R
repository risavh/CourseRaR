corr <-function(directory,threshold=0){
  file_in_dir<- list.files(directory)
  cor_vc<- vector()
  counter<-1
  for (filename in file_in_dir)
  {
    df<- read.csv(filename,header=T)
    df <- df[complete.cases(df),]
    #print(df)
    if (nrow(df)> threshold){
      cor_vc[counter]=cor(df$sulfate,df$nitrate)
      counter<-counter+1
    }
    
  }
  
  return(cor_vc)
  
  #nrow(val)
}

pollutantmean("C:\\DAily\\useless\\RR\\coursera\\test_ag",1)

cr<-corr("C:\\DAily\\useless\\RR\\coursera\\specdata", 150)

head(cr)
summary(cr)


cr <- corr("C:\\DAily\\useless\\RR\\coursera\\specdata", 400)
head(cr)
summary(cr)


cr <- corr("C:\\DAily\\useless\\RR\\coursera\\specdata", 5000)
head(cr)
summary(cr)
length(cr)

cr <- corr("C:\\DAily\\useless\\RR\\coursera\\specdata")
head(cr)
summary(cr)
length(cr)
