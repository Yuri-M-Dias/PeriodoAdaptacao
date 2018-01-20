## 11
library(assertthat)

## Naively recursive
factorial <- function(N) {
  if(N == 0) {
    return(1)
  }
  return(N * factorial(N - 1))
}

## Constant
inicial <- 100

sumFirstN <- function (N) {
  sum <- 0
  for(i in 0:(N-1)){
    sum <- sum + ((inicial - i) / factorial(i))
  }
  return(sum)
}

fiveFat <- factorial(N = 5)
assert_that(are_equal(120, fiveFat))

five <- sumFirstN(N = 5)
ten <- sumFirstN(N = 10)
twenty <- sumFirstN(N = 20)

## Rounding issues?
assert_that(is.number(five))
assert_that(is.number(ten))
assert_that(is.number(twenty))

