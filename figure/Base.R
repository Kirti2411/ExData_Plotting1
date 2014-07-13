date_time <- function(date, time) {
    return (strptime(paste(date, time), "%d/%m/%Y %H:%M:%S"))
}

load_data <- function() {
    filename <- "household_power_consumption.txt"
    dt <- read.table(filename,
                     header=TRUE,
                     sep=";",
                     colClasses=c("character", "character", rep("numeric",7)),
                     na="?")
    #Using the function for Time Conversion

    dt$Time <- strptime(paste(dt$Date, dt$Time), "%d/%m/%Y %H:%M:%S")
    dt$Date <- as.Date(dt$Date, "%d/%m/%Y")
    #Setting Date Ranges
    dates <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")
    dt <- subset(dt, Date %in% dates)
    
    return(dt)
    
}
