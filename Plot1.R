 house <- read.table("household_power_consumption.txt", skip = 1 , sep = ";")

names(house) <- c("Date" , "Time ", " Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")

> subhousee <- subset(house , house$Date =="1/2/2007" | house$Date=="2/2/2007" )

hist(as.numeric(as.character( subhousee$` Global_active_power`)) , col = "red" , xlab = "Global Active powers(kilowatts)", main = "Global Active Power")
