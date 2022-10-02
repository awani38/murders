library(tidyverse)
load ("rda/murders.rda")

murders %>% mutate (abb,rate) %>%
  ggplot (aes(abb,rate)) +
  geom_bar(width = .8,stat = "identity",color="blue") +
  coord_flip()

ggsave("figs/barplot.png")