library(tidyverse)

dat <- read.csv("data/forecast_ma2021.csv")

result <- dat %>% filter(model == 'Ensemble.all') %>% 
        select(target_end_date, wis) %>% 
        head(5)

print(date())
print(result)
