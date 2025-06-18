lapply(list.files(path = "utils", full.names = T),source)

stock <- "cod.27.22-25"

RDBES_data <- readRDS(file = "data/RDBES_object.Rds")
message("RDBES data loaded.")

generateALK(stock)
calculateWECA(stock)
generateRSK(stock)
calculateMeanLengths(stock)
calculateCANUM(stock)

estimation <- data.frame(stock = stock)

saveRDS(estimation,paste0("model/",stock,".Rds"))