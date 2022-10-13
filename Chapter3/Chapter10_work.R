library(tidyverse)

iris_tib <- as_tibble(iris)

iris_tib[iris_tib$Sepal.Length > 0, ]
