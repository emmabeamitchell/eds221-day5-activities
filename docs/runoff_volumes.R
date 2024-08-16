library(tidyverse)
library(here)

source(here::here("src", "storm_runoff.R"))


IA <- seq(from = .6, to = .8, by= .01)
predict_runoff(A = 182, IA )

prediction_df <- data.frame(predict_runoff(A = 182, IA), IA)


ggplot(data = prediction_df, aes(x = IA, y = predict_runoff(A = 182, IA ))) + geom_point() + geom_line()




