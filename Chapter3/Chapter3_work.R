library(tidyverse)

ggplot(data = mpg)

ggplot(data = mpg) + geom_point(mapping = aes(x = cyl, y = hwy))

ggplot(data = mpg) + geom_point(mapping = aes(x = drv, y = hwy))

ggplot(data = mpg) + geom_point(mapping = aes(x = class, y = hwy))

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color = class))

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy), color = 'blue')

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, size = cyl, color = cyl))

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, stroke = cyl))

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color = displ < 5))

# Facet wrapping
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_wrap(~ class, nrow = 2)

# Facet gridding
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(drv ~ cyl)

# Facet gridding
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(. ~ cyl)

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_wrap(~ cyl, nrow = 1)

# Dot plotting
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(drv ~ .)


# left
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, color = drv)) +
  geom_smooth(mapping = aes(x = displ, y = hwy, linetype = drv,
                            color = drv))


# Simpler code
# left
ggplot(data = mpg, mapping = aes(x = displ, y = hwy, color = drv)) +
  geom_point() +
  geom_smooth()


# Diamonds!
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut))

# Diamong proportions
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut, y = stat(prop), group = 1))

# Colored diamonds
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut, fill = cut))

# Stacked colored diamonds
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut, fill = clarity))

# Stacked colored diamonds
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut, fill = clarity), position = 'fill')

# Stacked colored diamonds
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut, fill = clarity), position = 'dodge')

# Flipped coords
ggplot(data = mpg, mapping = aes(x = class, y = hwy)) +
  geom_boxplot() + coord_flip()
