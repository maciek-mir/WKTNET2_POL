## Preprocess data, write TAF data tables

## Before:
## After:

library(icesTAF)

mkdir("data")

RDBES_data_filtered <- read.taf("boot/data/RDBES_data/RDBES_data_filtered.csv")
message("RDBES data loaded.")
RDBES_object <- RDBES_data_filtered
rm(RDBES_data_filtered)
message("RDBES object created.")
message("RDBES object validated.")
saveRDS(RDBES_object,paste0("data/RDBES_object.Rds"))
message("RDBES object saved.")




