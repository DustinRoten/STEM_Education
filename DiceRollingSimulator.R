### Dice Rolling Code ###

### Modify Code Here ###
NumberOfDice <- 1
NumberOfRolls <- 10
########################

Range <- c(1:(NumberOfDice*6))

a = NULL
Total = c(0, 0, 0, 0, 0)
temp1 = NULL

for(i in 1:NumberOfDice) {

  a <- sample(1:6, NumberOfRolls, replace=TRUE)
  b <- sample(1:6, NumberOfRolls, replace=TRUE)
  c <- sample(1:6, NumberOfRolls, replace=TRUE)
  d <- sample(1:6, NumberOfRolls, replace=TRUE)
  e <- sample(1:6, NumberOfRolls, replace=TRUE)

}

RollMatrix <- data.frame(a, b, c, d, e)

for(j in 1:NumberOfDice) {

Total <- Total+RollMatrix[j]
colnames(Total)[1] <- 'Total'
}

OrderedTotals <- table(Total)
OrderedTotals2 <- (OrderedTotals/NumberOfRolls)

barplot(OrderedTotals2, width = 0.8, main= NumberOfRolls, xlim = c(0, (max(Range))))

