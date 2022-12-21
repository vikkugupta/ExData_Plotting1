> house <- read.table("household_power_consumption.txt", skip = 1 , sep = ";")

names(house) <- c("Date" , "Time ", " Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")

subhouse  <- house[house$Date %in% c( "1/2/2007" ,"2/2/2007") , ]

subhouse$Date <- as.Date(subhouse$Date, format="%d/%m/%Y")

> subhouse$Time <- strptime(subhouse$Time, format="%H:%M:%S")

> subhouse[1:1440,"Time"] <- format(subhouse[1:1440,"Time"],"2007-02-01 %H:%M:%S")

> subhouse[1441:2880,"Time"] <- format(subhouse[1441:2880,"Time"],"2007-02-02 %H:%M:%S")

png("plot2.png" , width = 480 , height = 480)

plot(subhouse$`Time `, as.numeric(as.character(subhouse$` Global_active_power`)), type = "l" , xlab = "" , ylab = "Global Active Power(kilowatts)"  )

> title(main = "Global active power vs time")
> dev.off()
