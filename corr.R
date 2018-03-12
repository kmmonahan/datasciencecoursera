corr<-function(directory,threshold=0){
  filelist<-list.files(directory,full.names = TRUE)
  end <- numeric()
  
  for(i in 1:length(filelist)){
    data1<- read.csv(filelist[i],header=TRUE)
    data1  <- data1[complete.cases(data1),]
    sumrow <-nrow(data1)
  
    if(sumrow>threshold){
     
      end<-c(end,cor(data1$nitrate,data1$sulfate))
    }
    
  }
  
  return(end)
}