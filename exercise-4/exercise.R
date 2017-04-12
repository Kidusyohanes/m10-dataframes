# Exercise 4: Gates Foundation Educational Grants
# setwd("C:/Users/Kidus/Documents/INFO 201/m10-dataframes/exercise-4/")
# Read data into a variable called `grants` using the `read.csv` function
# Make sure *not* to read the strings as factors
gates.data <- read.csv('data/gates_money.csv', stringsAsFactors = FALSE)

# Use the View function to look at your data
View(gates.data)

# Create a variable `spending` as the `total_amount` column of the dataset
spending <- sum(gates.data$total_amount)

# Confirm that your `spending` variable is a vector using the `is.vector` function
is.vector(spending)

# Create a variable `org` as the `organization` column of the dataset.
org <- colnames(gates.data,'organization')

### Now you can ask some more interesting questions about the dataset.  Store your answers in variables ###

# What was the mean grant value?
mean.grant <- mean(gates.data)

# What was the dollar amount of the largest grant?
largest.grant <- max(gates.data$total_amount)

# What was the dollar amount of the smallest grant?
lowest.grant <- min(gates.data$total_amount)

# Which organization received the largest grant?
org.with.large.grant <- gates.data$organization[gates.data$total_amount == largest.grant]

# Which organization received the smallest grant?
org.with.lowest.grant <- gates.data$organization[gates.data$total_amount == lowest.grant]

# How many grants were awarded in 2010?
number.grants.in.2010 <- c(gates.data$start_year == 2010, +1)
count.fields(number.grants.in.2010)

number.of.grants.in.2010 <- function(gates.data) {
  count <- 0
  if(gates.data$start_year == 2010) {
    count <- count + 1
  }
  return(count)
}
