# Exercise 1: Creating data frames

# Create a vector of the number of points the Seahawks scored the first 4 games of last season
# Hint: (google "Seahawks scores 2016") 35W 25W 20L 6T 
first.4.games <- c(35,25, 20, 6)
# Create a vector of the number of points the Seahawks have allowed to be scored against them in the first 4 games
#
points.allowed <- c(24 , 31, 25, 6)

# Combine your two vectors into a dataframe
my.data <- data.frame(first.4.games,points.allowed)

# Create a new column "diff" that is the difference in points
diff <- c(abs(first.4.games - points.allowed))

# Create a new column "won" which is TRUE if the Seahawks wom
won <- first.4.games > points.allowed

# Create a vector of the opponents
opponents <- c('Dolphins','49ers','Broncos','Packers')

# Assign your dataframe rownames of their opponents
opponents.name <- data.frame(opponents,my.data)

