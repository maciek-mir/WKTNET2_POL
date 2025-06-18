library(TAF)
library(icesTAF)
library(data.table)

params <- read.taf(file = "../parameters/params.csv")

# Fetch data from RDBES API using JWT token
# Dummy data for now
RDBES_data <- data.table(Area = c("27.3.d.24","27.3.d.25","27.3.d.26","27.2.a.1"),
                         Species = c("HER","HER","SPR","COD"))

# Filter data for areas of interest for AWGs listed in params
RDBES_data_filtered <- RDBES_data
rm(RDBES_data)

# Save filtered RDBES data
write.taf(RDBES_data_filtered)

message("RDBES data fetched and filtered.")

