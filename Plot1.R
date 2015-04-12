# The following four R scripts will generate the desired plots. Be sure to run the Plot1.R
# in order to get the appropriate variables in your local environment before running scripts
# 2-4.

# First you will need to download the household_power_consumption zip file from
# this link: https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip
# Unzip the file
# Next set your working directory to the one that contains the household_power_consumption.txt file

#read in file
household_power_consuption <- read.table("household_power_consumption.txt", sep = ";")

#Dates that I want are from "1/2/2007" to "2/2/2007"
#By exploring the data, I found that this corresponds to rows 66638 - 69517

#First I subset the dates I want
PowerDateSet <- household_power_consuption[66638:69517, ]

#Retrieveing the observation labels and labeling the data set properly
HouseNames <- household_power_consuption[1, ]
HouseNames <- as.vector(as.matrix(HouseNames))
colnames(PowerDateSet) <- HouseNames

#Creating Plot 1
#Subset global active power column and make it numeric
GlobalActivePower <- as.numeric(levels(PowerDateSet$Global_active_power))[PowerDateSet$Global_active_power]

#Open the graphics device
#You will need a directory on your desktop named "RCoursera" and
#a directory in RCoursera called "ExData_Plotting1"
png(filename = "~/Desktop/RCoursera/ExData_Plotting1/plot1.png", width=480, height=480)

#Plot the data as a histogram
hist(GlobalActivePower, col = "red", main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)", breaks = 16, bg = "transparent")

#turn off the graphics device
dev.off()
