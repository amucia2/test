.libPaths("P:/RLibrary")
library(tidyverse)

fish_data <- read.csv("Gaeta_etal_CLC_data_1.csv")

fish_data %>% 
  mutate(length_cat = ifelse(length>300,"big","small")) %>% 
  filter(scalelength >= 1) -> fish_data_cat
  