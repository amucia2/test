.libPaths("P:/RLibrary")
library(tidyverse)

fish_data <- read.csv("Gaeta_etal_CLC_data.csv")

fish_data %>% 
  mutate(length_cat = ifelse(length>200,"big","small")) -> fish_data_cat
