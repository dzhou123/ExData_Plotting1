# Read Data

dataFile <- "./household_power_consumption.txt"
data <- read.table(dataFile, header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")
subSetData <- data[data$Date %in% c("1/2/2007", "2/2/2007"),]

# Generate Plot

globalActivePower <- as.numeric(subSetData$Global_active_power)
png("plot1.png", height = 480, width = 480)
hist(globalActivePower, main = "Global Active Power", col = "red", xlab = "Global Active Power (kilowatts)")
dev.off()