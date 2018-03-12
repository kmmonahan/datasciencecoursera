pollutantmean <- function(directory,pollutant, id= 1:332) {
    fileslist <- list.files(directory,full.names = TRUE)
       values <- numeric()
       
    for(i in id){
               data <- read.csv(fileslist[i])
               values <- c(values,data[[pollutant]])
           }
    mean(values,na.rm = TRUE)
}