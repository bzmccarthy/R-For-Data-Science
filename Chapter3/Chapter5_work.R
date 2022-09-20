library(tidyr)
library(nycflights13)

jan1 <- filter(flights, month == 1, day > 8 | day < 4)
new_flights <- flights
