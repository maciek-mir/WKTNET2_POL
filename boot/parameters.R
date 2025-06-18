library(TAF)
library(icesTAF)

params <- data.frame(AWG = c("WGBFAS","HAWG"),
                     assessment_year = 2024)

write.taf(params)
message("Parameters created.")
