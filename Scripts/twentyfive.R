## Recreating Jon Bois's awesome 25 bar chart for #TidyTuesday
library(tidyverse)
library(here)

twentyfive <- data.frame(seq(1:25))
colnames(twentyfive) <- "awesome"
twentyfive <- twentyfive |>
  mutate(x = seq(1:25))
twentyfive_chart <- ggplot(twentyfive, aes(x = x, y = awesome)) +
  geom_col(fill = "royalblue1", colour = "royalblue1") +
  ggtitle("Awesome!") +
  xlab("Twentyfive!") +
  ylab("Twentyfive!") +
  theme(plot.title = element_text(size = 25, hjust = 0.5),
        legend.position = "none")
twentyfive_chart
ggsave(here("Outputs", "twentyfive.png"))




## what if I did base R for #MessyverseMonday
twentyfive_vector <- seq(1:25)
barplot(twentyfive_vector, col = "royalblue1")
