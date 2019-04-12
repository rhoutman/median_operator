library(tercen)
library(dplyr)

(ctx = tercenCtx())  %>% 
  select(.y, .ci, .ri) %>% 
  group_by(.ci, .ri) %>%
  summarise(median = median(.y, na.rm=T)) %>%
  ctx$addNamespace() %>%
  ctx$save()
