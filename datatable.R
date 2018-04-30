library(nycflights13)
library(plyr)
library(data.table)
str(flights)
str(planes)
str(weather)


df<-rbind(flights,flights,flights,flights,flights,flights,flights,flights,flights,flights,flights,flights,flights,flights)
dft<-as.data.table(rbind(flights,flights,flights,flights,flights,flights,flights,flights,flights,flights,flights,flights,flights,flights))

system.time(dfp<-ddply(df,.(month,carrier,origin),summarise,delay=mean(arr_delay)))

system.time(dftt<-dft[,by=.(month,carrier,origin),.(mt=mean(arr_delay,na.rm=T))])

