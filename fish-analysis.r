.libPaths("P:/RLibrary")
library(tidyverse)

fish_data <- read.csv("Gaeta_etal_CLC_data.csv")

fish_data %>% 
  mutate(length_cat = ifelse(length>300,"big","small")) -> fish_data_cat

fish_data %>%
  filter(scalelength >= 1) -> fish_data_cat

nrow(fish_data_cat)
