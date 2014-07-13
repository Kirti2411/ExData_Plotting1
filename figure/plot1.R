source("Base.R")

plot1 <- function(dt=NULL) {
    if(is.null(dt))
        dt <- load_data()
    
    png("plot1.png", width=400, height=400)
    
    hist(dt$Global_active_power,
         main="Global Active Power",
         xlab="Global Active Power (kilowatts)",
         ylab="Frequency",
         col="red")
    
    dev.off()
}