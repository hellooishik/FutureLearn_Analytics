library(dplyr)
library(lubridate)

activity_clean <- activity %>%
  filter(!is.na(learner_id)) %>%
  mutate(
    first_visited_at = ymd_hms(first_visited_at),
    last_completed_at = ymd_hms(last_completed_at)
  )
