library(ggplot2)
hour = read.csv("~/Dropbox/GA_DS/ga_ds_project/Bike-Sharing-Dataset/hour.csv")
day = read.csv("~/Dropbox/GA_DS/ga_ds_project/Bike-Sharing-Dataset/day.csv")
month_agg = aggregate(day$cnt, by=list(mnth), FUN=sum)
ma2=aggregate(day$cnt, by=list(mnth), FUN=sum)
names(month_agg)[1]="Month"
names(ma2)[1]="Month"
names(month_agg)[2]="Riders"
names(ma2)[2]="Riders"
month_agg$Month[month_agg$Month == 1] <- "Jan"
month_agg$Month[month_agg$Month == 2] <- "Feb"
month_agg$Month[month_agg$Month == 3] <- "Mar"
month_agg$Month[month_agg$Month == 4] <- "Apr"
month_agg$Month[month_agg$Month == 5] <- "May"
month_agg$Month[month_agg$Month == 6] <- "Jun"
month_agg$Month[month_agg$Month == 7] <- "Jul"
month_agg$Month[month_agg$Month == 8] <- "Aug"
month_agg$Month[month_agg$Month == 9] <- "Sep"
month_agg$Month[month_agg$Month == 10] <- "Oct"
month_agg$Month[month_agg$Month == 11] <- "Nov"
month_agg$Month[month_agg$Month == 12] <- "Dec"
qplot(reorder(month_agg$Month, ma2$Month), month_agg$Riders, xlab="Month", ylab="Total Riders", geom = "histogram") + theme_bw()
