library(ggplot2)
install.packages("ggfortify")
library(ggfortify)
try_2 <- function(z,x)
{
 df <- z
 d <- x
  #ncol(d)
  #nrow(d)
  e <- d[,2]
  e
  if(NCOL(df)==32 && NROW(df)==22411 && NCOL(d)==3 && NROW(d)==30)
  {
    View(df)
    c <- df[,3:30]
    c <- df[,-1:-2]
    head(c)
    View(c)
    a <- t(c)
    #ncol(a)
    #nrow(a)
    View(a)
    ds3 <- cbind(a, Time = d$Time)
    d$Time
    View(ds3)
    #ncol(ds3)
    #nrow(ds3)
    #ggsave("my.jpg")
    pl<- autoplot(prcomp(a), data = ds3, colour = 'Time')
    print (pl)
    #while (!is.null(dev.list()))  dev.off()
  } else
  {
    print ("files not appropriate")
  }
}
file_1 <- read.csv(file.choose(), header = TRUE, sep = ",")
file_2 <- read.csv(file.choose(), header = TRUE, sep = ",")
try_2(file_1,file_2)
#print ("a")
