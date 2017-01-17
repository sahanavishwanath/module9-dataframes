# Exercise 1: Creating data frames

# Create a vector of the number of points the Seahawks scored in each game this
# season (google "Seahawks" for the info!)
points <- c(20, 26, 25, 31, 24, 10, 40, 5, 26, 31, 31, 20)

# Create a vector of the number of points the Seahwaks have allowed to be scored
# against them in each game this season
opp.points <- c(25, 25, 24, 15, 14, 7, 38, 3, 34, 23, 6, 36)

# Combine your two vectors into a dataframe
scores <- data.frame(points, opp.points)

# Create a new column "diff" that is the difference in points.
# Hint: recall the syntax for assigning new elements (which in this case will be
# a vector) to a list!
scores$diff <- scores$points - scores$opp.points

# Create a new column "won" which is TRUE if the Seahawks won
scores$won <- scores$diff > 0

# Create a vector of the opponent names corresponding to the games played
opp.names <- c("49ers", "Cardinals", "Rams", "Packers", "Panthers", "Buckaneers", "Eagles", "Patriots", "Bills", "Saints", "Dolphins", "Falcons")

# Assign your dataframe rownames of their opponents
rownames(scores) <- opp.names

# View your data frame to see how it has changed!
View(scores)