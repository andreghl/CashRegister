coins <- c("ONE CENT" = 0.01,
           "TWO CENTS" = 0.02,
           "FIVE CENTS" = 0.05,
           "TEN CENTS" = 0.10,
           "TWENTY CENTS" = 0.20,
           "FIFTY CENTS" = 0.50,
           "ONE EURO" = 1,
           "TWO EUROS" = 2)

notes <- c("FIVE EUROS" = 5,
           "TEN EUROS" = 10,
           "TWENTY EUROS" = 20,
           "FIFTY EUROS" = 50,
           "HUNDRED EUROS" = 100,
           "TWO HUNDRED EUROS" = 200,
           "FIVE HUNDRED EUROS" = 500)

prices <- c("Adult" = 15,
            "Senior" = 13,
            "Student" = 11,
            "Disabled" = 11,
            "Child" = 7,
            "Baby" = 0)

n <- 200  # Number of orders
  orders.data <- rep(0, n)

# Simulation of the number of adult tickets per visit
n.Adult <- rep(0, n)

for (i in 1:n) {
  Adults <- rpois(n, lambda = 3)
  n.Adult[i] <- Adults
}

# Simulation of the number of senior tickets per visit
n.Senior <- rep(0, n)

for (i in 1:n) {
  Seniors <- rpois(n, lambda = 1)
  n.Senior[i] <- Seniors
}

# Simulation of the number of student tickets per visit
n.Student <- rep(0, n)

for (i in 1:n) {
  Students <- rpois(n, lambda = 2)
  n.Student[i] <- Students
}

# Simulation of the number of disabled tickets per visit
n.Disabled <- rep(0, n)

for (i in 1:n) {
  Disabled <- rpois(n, lambda = 0)
  n.Disabled[i] <- Disabled
}

# Simulation of the number of child tickets per visit
n.Child <- rep(0, n)

for (i in 1:n) {
  Children <- rpois(n, lambda = 2)
  n.Child[i] <- Children
}

# Simulation of the number of baby tickets per visit
n.Baby <- rep(0, n)

for (i in 1:n) {
  Babies <- rpois(n, lambda = 0)
  n.Baby[i] <- Babies
}

# Function to collect the number of orders for each ticket
# and return the overall price of the order.

orders <- function(Adult = 0, Senior = 0, Student = 0, Disabled = 0, Child = 0, Baby = 0) {
  
  # Could assign the vectors of the randomly generated visits
  
  order <- price[,1] * Adult + price[,2] * Senior + price[,3] * Student + price[,4] * Disabled + price[,5] * Child + price[,6] * Baby
  return(order)
  
  # Add each order to the list
  for (i in 1:n) {
    orders.data[i] <<- order
  }
}

available <- c("ONE CENT" = 0,
               "TWO CENTS" = 0,
               "FIVE CENTS" = 0,
               "TEN CENTS" = 0,
               "TWENTY CENTS" = 0,
               "FIFTY CENTS" = 0,
               "ONE EURO" = 0,
               "TWO EUROS" = 0,
               "FIVE EUROS" = 0,
               "TEN EUROS" = 0,
               "TWENTY EUROS" = 0,
               "FIFTY EUROS" = 0,
               "HUNDRED EUROS" = 0,
               "TWO HUNDRED EUROS" = 0,
               "FIVE HUNDRED EUROS" = 0)

# Subtract all possible 500 euros denomination from payment

Check500 <- function(order, payment,) {
  
  count500 <<- 0
  
  while (order > 500 ) {
    leftafter500 <- order - 500
    
    # Add a counter on the number of iterations
    count500 <<- count500 + 1
  } 
  return(count500)
  return(leftafter500)
}

# Cash Register Function

CashRegister <- function(order = NULL, payment = NULL, treasury = 0) {
  
  change <- payment - order 
  
}
