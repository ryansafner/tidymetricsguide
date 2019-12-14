library(tidyverse)

# make data
df<-tibble(
  X = rnorm(100,10,1),
  Z = runif(100,10,20),
  U = rnorm(100,0,1),
  Shape = factor(sample(c("Circle", "Square", "Triangle"),
                        100, replace=T),
                 levels=c("Circle", "Square", "Triangle")),
  Y = 2*X-0.5*X^2+Z+0.25*(X*Z)+U
)

# write data to a csv file
write_csv(df, "example_data.csv")

