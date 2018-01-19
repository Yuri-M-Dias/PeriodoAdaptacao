## Lista Maurício
## 9

## Naively counting the Taylor Series
calculateTaylorSeries <- function (N) {
  sum <- 0
  for(i in 1:N) {
    sum <- sum + i / (2*i + 1)
  }
  return(sum)
}

## The only condition is N > 1
print(calculateTaylorSeries(2))
print(calculateTaylorSeries(10))
print(calculateTaylorSeries(1000))