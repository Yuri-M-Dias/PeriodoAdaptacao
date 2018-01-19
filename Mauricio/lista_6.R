## 6
A <- matrix(
  data = 1:9,
  nrow = 3,
  ncol = 3,
  byrow = TRUE
)
B <- matrix(
  data = 0,
  nrow = 6,
  ncol = 6,
  byrow = TRUE
)

for (i in 1:6) {
  for (j in 1:6) {
    if ((i > 3 && j < 4) || (i < 4 && j > 3)) {
      tmpI <- (i %% 3) + 1
      tmpJ <- (j %% 3) + 1
      B[i, j] = A[tmpI, tmpJ]
    }
  }
}
