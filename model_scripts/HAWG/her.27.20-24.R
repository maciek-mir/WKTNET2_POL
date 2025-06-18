lapply(list.files(path = "utils", full.names = T),source)

stock <- "her.27.20-24"

RDBES_data <- readRDS(file = "data/RDBES_object.Rds")
message("RDBES data loaded.")

generateALK(stock)
calculateWECA(stock)
generateRSK(stock)
calculateMeanLengths(stock)
calculateCANUM(stock)

estimation <- data.frame(stock = stock)

saveRDS(estimation,paste0("model/",stock,".Rds"))
