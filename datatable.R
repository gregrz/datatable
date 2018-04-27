library(nycflights13)
library(plyr)
library(data.table)
str(flights)
str(planes)
str(weather)


df<-rbind(flights,flights,flights,flights,flights,flights,flights,flights,flights,flights,flights,flights,flights,flights)
dft<-as.data.table(flights)

system.time(dfp<-ddply(df,.(month,carrier,origin),summarise,delay=mean(arr_delay)))
