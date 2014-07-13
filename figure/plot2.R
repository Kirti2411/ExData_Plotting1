source("Base.R")

plot2 <- function(dt=NULL) {
    if(is.null(dt))
        dt<- load_data()

    png("plot2.png", width=400, height=400)
    
    plot(dt$Time, dt$Global_active_power,
         type="l",
         xlab="",
         ylab="Global Active Power (kilowatts)")
    
    dev.off()
}