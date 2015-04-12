#Open the graphics device
png(filename = "~/ExData_Plotting1/plot2.png", width=480, height=480)

plot(GlobalActivePower, type = "l", xlab = "", 
     ylab = "Global Acive Power (kilowatts)", xaxt = "n")
axis(1, at=c(1, 1440, 2880), labels = c("Thu", "Fri", "Sat"))
#1440 is the number of observations from the first day and 2880 is the total number of obs
dev.off()