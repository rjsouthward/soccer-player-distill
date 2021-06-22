library(tidyverse)
library(rvest)

html <- read_html("https://en.wikipedia.org/wiki/UEFA_Euro_2020_squads")
raw_data <- html %>%
  html_elements("td:nth-child(4)") %>%
  html_text2() %>%
  as_tibble()

write_csv(x = raw_data, file = "birth-date-data.csv")