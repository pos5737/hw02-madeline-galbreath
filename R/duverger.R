library(tidyverse)
parties <- readRDS("data/parties.rds")
glimpse(parties)
ggplot(parties, aes(x = enep, fill = electoral_system)) + 
  geom_density(alpha = 0.4) + facet_grid(vars(social_heterogeneity)) + labs(x = "Number of Parties", y = "Density", fill = "Electoral System", title = "Relating Political Party Count to Social Heterogeneity and Electoral Systems", caption = "Data Source: Parties from Clark and Golder (2006)") + theme_bw()
ggsave("figs/parties-by-soc-het-and-elec-system.pdf", height = 5, width = 8)
