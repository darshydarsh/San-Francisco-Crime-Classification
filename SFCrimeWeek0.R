#SF-Crime-Data-Viz
#Week-0
#9/15/2015
#"Darsh Balakrishnan" 

#To help summarize data
library(sjPlot)
library(ggplot2)
library(plyr)

colnames(train) = c("Dates", "Category", "Description", "Day", "District", "Resolution", "Address", "X", "Y")
attach(train)
#Generating Frequency Table of the different categories
#Generating a Histogram for the Different Crime Categories
sjt.frq(Category)
catfac <- factor(Category)
qplot(catfac, main = "Histogram of Crime Categories", xlab = "Crime Category", ylab= "Frequency")

#Generating Frequency Table of the different crime Descriptions (Two Ways)
#Generating a Histogram for the Different Crime Descriptions
sjt.frq(Description)
desfac <- factor(Description)
qplot(desfac, main = "Histogram of Crime Descriptions", xlab = "Crime Description", ylab = "Frequency")

#Generating Frequency Table of the different Dates
#Generating a Histogram for the Different Crime Days
sjt.frq(Day)
dayfac <- factor(Day)
qplot(Day, main = "Histogram of Day of the Crime", xlab = "Day of Crime", ylab = "Frequency")


#Generating Frequency Table of the different Districts
#Generating a Histogram for the Different Crime Districts
sjt.frq(District)
dayfac <- factor(District)
countfac <-count(dayfac)
qplot(District, main = "Histogram of the District of the Crime", xlab = "District of Crime", ylab = "Frequency")

