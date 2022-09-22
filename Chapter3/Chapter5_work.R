library(tidyverse)
library(nycflights13)

jan1 <- filter(flights, month == 1, day == 1)

arranged_flights <- arrange(flights, year, desc(month), desc(day))

select_flights <- select(flights, year, month, day)

renamed_flights <- rename(flights, tail_num = tailnum)

move_cols_df <- select(flights, time_hour, air_time, everything())

flights_sml <- select(flights,
                      year:day,
                      ends_with("delay"),
                      distance,
                      air_time)

mut_df <- mutate(flights_sml,
                 gain = dep_delay - arr_delay,
                 hours = air_time / 60,
                 dist_total = distance / sum(distance),
                 gain_per_hour = gain / hours,
                 speed = distance / air_time * 60)


