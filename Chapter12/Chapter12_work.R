library(tidyverse)

table1 %>% mutate(rate = cases / population * 10000)

table1 %>% count(year, wt = cases)

library(ggplot2)

ggplot(table1, aes(year, cases)) +
  geom_line(aes(group = country), color = 'grey50') +
  geom_point(aes(color = country))

tidy4a <- table4a %>%
  pivot_longer(c('1999', '2000'), names_to = 'year',
               values_to = 'cases')

tidy4b <- table4b %>%
  pivot_longer(c('1999', '2000'), names_to = 'year', values_to = 'population')

tidy4 <- left_join(tidy4a, tidy4b)




tidy2 <- table2 %>% pivot_wider(names_from = type,
                                values_from = count)


table3 %>%
  separate(rate, into = c('cases', 'population'),
           sep = '/', convert = TRUE)

table3 %>%
  separate(year, into = c('century', 'year'),
           sep = 2)


