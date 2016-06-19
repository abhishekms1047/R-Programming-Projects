pollutantmean<-function(directory,polluntant,id=1:332){


a <- list.files()
allfiles <-NULL
print(id)
for (i in id) 
  {
   readeachfile <- read.csv(a[i])
   allfiles<-append(allfiles,readeachfile,after=length(allfiles))
   print(i)
  }
meanvalue <-mean(allfiles$sulfate,na.rm=TRUE)
return(meanvalue)


}
