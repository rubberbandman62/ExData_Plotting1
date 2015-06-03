library(dplyr)

# load the data, make some transformations and save only the relevant parts
# in hpc.csv. Running this script a second time only needs to load the subset.
if(!file.exists("hpc.csv")) {
    hpc <- read.csv("household_power_consumption.txt", sep=";", na.strings="?", 
                    stringsAsFactors=FALSE)
    hpc <- filter(hpc, Date=="1/2/2007" | Date=="2/2/2007")
    hpc$DateTime <- as.POSIXct(strptime(paste(hpc$Date, hpc$Time), "%d/%m/%Y %H:%M:%S"))
    hpc <- select(hpc, DateTime, Global_active_power:Sub_metering_3)
    write.csv(hpc, file="hpc.csv", row.names=FALSE)
} else {
    hpc <- read.csv("hpc.csv", colClasses=c("POSIXct", rep("numeric", 7)))
}
