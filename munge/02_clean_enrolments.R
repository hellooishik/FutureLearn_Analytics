library(dplyr)
library(lubridate)

enrolments_clean <- enrolments %>%
  filter(!is.na(learner_id)) %>%
  mutate(
    enrolled_at = ymd_hms(enrolled_at),
    unenrolled_at = ymd_hms(unenrolled_at)
  )
