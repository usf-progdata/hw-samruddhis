install.packages("gapminder")

library(ggplot2)
library(gapminder)
library(tidyverse)

print(gapminder)

ggplot(gapminder) + 
  aes(x = gdpPercap, y = lifeExp, fill= continent, color = continent) +
  geom_point(alpha = 0.1) +
  scale_x_log10("GDP per capita", labels = scales::dollar_format()) +
  theme_bw() +
  ylab("Life Expectancy")

install.packages("remotes")
remotes::install_github("bwiernik/progdata@main")
