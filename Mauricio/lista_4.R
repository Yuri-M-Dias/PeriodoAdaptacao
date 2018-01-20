## 4
library(assertthat)

## Considera V como sendo ordenado
binaryVectorSearch <- function (N, V, K) {
  comeco <- 1
  fim <- N
  meio <- floor((comeco + fim) / 2)
  while(V[meio] != K && comeco < fim){
    if(K < V[meio]){
      fim <- meio - 1
    } else {
      comeco <- meio + 1
    }
    meio <- floor((comeco + fim) / 2)
  }
  if(V[meio] == K){
    return(meio)
  }
  return(0)
}

## A única condição é N > 1
middle <- binaryVectorSearch(
  N = 5,
  V = c(1,2,3,4,5),
  K = 3
)
begin <- binaryVectorSearch(
  N = 5,
  V = c(1,2,3,4,5),
  K = 1
)
end <- binaryVectorSearch(
  N = 5,
  V = c(1,2,3,4,5),
  K = 5
)
notThere <- binaryVectorSearch(
  N = 5,
  V = c(1,2,3,4,5),
  K = 6
)

assert_that(are_equal(3, middle))
assert_that(are_equal(1, begin))
assert_that(are_equal(5, end))
assert_that(are_equal(0, notThere))
