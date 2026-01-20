library(dplyr)

final_dataset <- enrolments_clean %>%
  left_join(activity_clean, by = "learner_id")
