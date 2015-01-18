#subset the data into individual years
# (note: to be sure that all years are captured, one can apply the function 'unique(NEI$year)')

NEI_1999<-subset(NEI, NEI$year == 1999)
NEI_2002<-subset(NEI, NEI$year == 2002)
NEI_2005<-subset(NEI, NEI$year == 2005)
NEI_2008<-subset(NEI, NEI$year == 2008)

#total the Emissions for each year

NEI_1999_emissions<-sum(NEI_1999$Emissions, na.rm=TRUE)
NEI_2002_emissions<-sum(NEI_2002$Emissions, na.rm=TRUE)
NEI_2005_emissions<-sum(NEI_2005$Emissions, na.rm=TRUE)
NEI_2008_emissions<-sum(NEI_2008$Emissions, na.rm=TRUE)

#plot the results and save to the plot1.png file

png("plot1.png")
barplot(c(NEI_1999_emissions, NEI_2002_emissions, NEI_2005_emissions, NEI_2008_emissions),names.arg=c(1999,2002,2005,2008),xlab="Year",ylab="Total PM2.5 Emissions")
dev.off()

