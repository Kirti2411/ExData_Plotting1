source("Base.R")

plot3 <- function(dt=NULL) {
    if(is.null(dt))
        dt <- load_data()

    png("plot3.png", width=400, height=400)

    plot(dt$Time, dt$Sub_metering_1, type="l", col="black",
         xlab="", ylab="Energy sub metering")
    lines(dt$Time, dt$Sub_metering_2, col="red")
    lines(dt$Time, dt$Sub_metering_3, col="blue")
    legend("topright",
           col=c("black", "red", "blue"),
           c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
           lty=1)

    dev.off()
}