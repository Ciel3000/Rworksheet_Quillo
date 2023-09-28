#1
#a

operator <- seq(-5,5)
operator

#b

x <- 1:7
x

#2 Create a vecror using seq() function
# a. seq(1, 3, by=0.2) # specify step size

vect1 <- seq(1, 3, by=0.2) # specify step size
vect1

# it counts 1 to 3 but with decimals that increases by .2

#3 A factory has a census of its workers. There are 50 workers in total. The following
#list shows their ages: 34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27,
#22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 43, 53, 41, 51, 35,
#24,33, 41, 53, 40, 18, 44, 38, 41, 48, 27, 39, 19, 30, 61, 54, 58, 26,
#18.

workersAge <- list(34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27,
            22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 43, 53, 41, 51, 35,
            24,33, 41, 53, 40, 18, 44, 38, 41, 48, 27, 39, 19, 30, 61, 54, 58, 26,
            18)
workersAge

#3.a Access 3rd element, what is the value?

age3rd <- workersAge[3]
age3rd  

#3.b Access 2nd and 4th element, what are the values?

age2and4 <- workersAge[c(2,4)]
age2and4

#3.c Access all but the 4th and 12th element is not

allageexp4and12 <- workersAge[-c(4,12)]
allageexp4and12

#4 *Create a vector x <- c("first"=3, "second"=0, "third"=9). Then named the
#vector, names(x).
names(x) <- c("first"=3, "second"=0, "third"=9)
names(x)

#4.a Print the results. Then access x[c("first", "third")].

x[c("first", "third")]

#5 Create a sequence x from -3:2.

x <- seq(-3:2)
x

#5.a Modify 2nd element and change it to 0

x[2] <- 0
x
# it changes the 2nd element to zero('0')

#5.b

x[2] <- 0
x

#6The following data shows the diesel fuel purchased by Mr. Cruz.

#6.a a. Create a data frame for month, price per liter (php)
# and purchase-quantity (liter). Write the R scripts and
# its output.

month <- c("Jan", "Feb", "March", "Apr", "May", "June")
pricePerLiter <- c(52.50, 57.25, 60.00, 65.00, 74.25, 54.00)
purchaseQuantity <- c(25, 30, 40, 50, 10, 45)

dataframe1 <- data.frame("Month  " = month, "Price per Liter(PhP)" = pricePerLiter, "  Purchase-quantity (Liters)" = purchaseQuantity)
print(dataframe1)

#6 b. What is the average fuel expenditure of Mr. Cruz from

ave <- weighted.mean(pricePerLiter,purchaseQuantity)
ave

#7 R has actually lots of built-in datasets. For example, the rivers data “gives the lengths
#(in miles) of 141 “major” rivers in North America, as compiled by the US Geological
#Survey”

riverData <- c(length(rivers), sum(rivers), mean(rivers), median(rivers), var(rivers),
          sd(rivers), min(rivers), max(rivers))


#7 b. What are the results?
# it gets the datapoints of rivers(length), sum, mean, medial, var, sd, min, and max of the built in datasets.

riverData

# it shows the data points, sum, mean, median, var, sd, min, and max

#7.c Write the R scripts and its outputs.

data <- c(length(rivers), sum(rivers), mean(rivers), median(rivers), var(rivers),
          sd(rivers), min(rivers), max(rivers))
data

#8.The table below gives the 25 most powerful celebrities and their annual pay as ranked
# by the editions of Forbes magazine and as listed on the Forbes.com website.

#8.a Create vectors according to the above table.
# Write the R scripts and its output.

powerRanking <- c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25)
celebrityName <- c("Tom Cruise","Rolling Stones","Oprah Winfrey","U2","Tiger Woods","Steven Spielberg","Howard Stern","50 Cent","Cast of the Sopranos","Dan Brown","Bruce Springsteen","Donald Trump","Muhammad Ali","Paul McCartney","George Lucas","Elton John","David Letterman","Phil Mickelson","J.K Rowling","Bradd Pitt","Peter Jackson","Dr. Phil McGraw","Jay Lenon","Celine Dion","Kobe Bryant")
pay <- c(67,90,225,110,90,332,302,41,52,88,55,44,55,40,233,34,40,47,75,25,39,45,32,40,31)

powerfulCelebrities <- data.frame("Power Ranking" = powerRanking, "Celebrity Name" = celebrityName, "Pay" = pay)
powerfulCelebrities

#8.b Modify the power ranking and pay of J.K. Rowling.
# Change power ranking to 15 and pay to 90. Write the
# R scripts and its output.

powerRanking[19] <- 15
mdPowerRanking <- powerRanking
mdPowerRanking

pay[19] <- 90
mdPay <- pay
mdPay

mdPowerfulCelebrities <- data.frame("Power Ranking" = mdPowerRanking, "Celebrity Name" = celebrityName, "Pay" = mdPay)
mdPowerfulCelebrities

#8.c Create an excel fle from the table above and save it
# as csv fle(PowerRanking). Import the csv fle into
# the RStudio. What is the R script?

viewmdPowerfulCelebrities <- View(mdPowerfulCelebrities)
viewmdPowerfulCelebrities

write.csv(mdPowerfulCelebrities, file = "PowerRanking.csv", row.names = TRUE)

csvmdPowerfulCeleb <- read.csv(file = "PowerRanking.csv",header = T,
                                            stringsAsFactors = F,sep = ",")
csvmdPowerfulCeleb

#8.d  Access the rows 10 to 20 and save it as Ranks.RData.
# Write the R script and its output.

filMdPowerRankings <- mdPowerRanking[c(10:20)]
filMdPowerRankings
filCelebirtyName <- celebrityName[c(10:20)]
filCelebirtyName
filMdPay <- mdPay[c(10:20)]
filMdPay

filPowerfulCelebrity <- data.frame("Rank" = filMdPowerRankings, "Celebrity Name" = filCelebirtyName, "Pay" = filMdPay)  
filPowerfulCelebrity
View(powerfulCelebrities)

#9 Download the Hotels-Vienna https://tinyurl.com/Hotels-Vienna

#9.a Import the excel file into your RStudio.

library(readxl)
hotels_vienna <- read_excel("hotels-vienna.xlsx")
View(hotels_vienna)

#9.b How many dimensions does the dataset have?
# What is the R script? WHat is its output?

dimensionofHotel <- dim(hotels_vienna)
dimensionofHotel


#9.c Select columns country, neighbourhood,
# price, stars, accomodation_type, and
# ratings. Write the R script.

filcol <- hotels_vienna[c(1,6,7,9,22,24)]
filcol

#9.d Save the data as **new.RData to your RStudio. Write the
# R script.

save(filcol, file = "new.RData")

#9.e  Display the frst six rows and last six rows of the
# new.RData. What is the R script?


load("new.RData")


head(filcol)[[1]]

tail(filcol)[[1]]

#10 Create a list of ten (10) vegetables you ate during your lifetime. If none, ust list down.
#10.a Write the R scripts and its output.


vegiesate <- c("Cabbage","Potato","Carrot","Eggplant","Lettuce","Cucumber","Tomato","Onion","Corn","Chayote")

#10. b Add 2 additional vegetables after the last vegetables
# in the list. What is the R script and its output?

newvegiesate <- append(vegiesate, c("Okra","Squash"))
newvegiesate

#10. c  Add 4 additional vegetables after index 5. How many
# datapoints does your vegetable list have? What is the
# R script and its output?
newvegiesate2 <- append(newvegiesate, c("Broccoli", "Radish","Celery","Cilantro"), after = 5)
newvegiesate2  

#10. d Remove the vegetables in index 5, 10, and 15. How
# many vegetables were left? Write the codes and its
# output.

newvegiesate3 <- newvegiesate2[c(-5,-10,-15)]
newvegiesate3

