# load the data
source("loadData.R")

# plot the histogram to plot1.png
png("plot1.png")
hist(hpc$Global_active_power, 
     col="red", 
     xlab="Global Active Power (kilowatts)", 
     main="Global Active Power")

dev.off()