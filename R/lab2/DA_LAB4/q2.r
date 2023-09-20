pets <- (sample(
  c("dog", "cat", "hamster", "goldfish"),
  1000,
  replace = TRUE
))
print(pets)
head(pets)
z<-factor(pets)
summary(z)