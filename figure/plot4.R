source("Base.R")

plot4 <- function(dt=NULL) {
    if(is.null(dt))
        dt <- load_data()

    png("plot4.png", width=400, height=400)

    par(mfrow=c(2,2))
    # 1
    plot(dt$Time, dt$Global_active_power,
         type="l",
         xlab="",
         ylab="Global Active Power")
    # 2
    plot(dt$Time, dt$Voltage, type="l",
         xlab="datetime", ylab="Voltage")
    # 3
    plot(dt$Time, dt$Sub_metering_1, type="l", col="black",
         xlab="", ylab="Energy sub metering")
    lines(dt$Time, dt$Sub_metering_2, col="red")
    lines(dt$Time, dt$Sub_metering_3, col="blue")
    legend("topright",
           col=c("black", "red", "blue"),
           c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
           lty=1,
           box.lwd=0)
    # 4
    plot(dt$Time, dt$Global_reactive_power, type="n",
         xlab="datetime", ylab="Global_reactive_power")
    lines(dt$Time, dt$Global_reactive_power)
    
    dev.off()

}