## Run analysis, write model results

## Before:
## After:

library(icesTAF)

mkdir("model")

params <- read.taf(file = "boot/data/parameters/params.csv")

for(awg in params$AWG){
  message(paste0("============",awg,"============"))
  if(awg == "WGBFAS"){
    lapply(list.files(path = "model_scripts/WGBFAS", full.names = T),source)
  }
  else if(awg == "HAWG"){
    lapply(list.files(path = "model_scripts/HAWG", full.names = T),source)
  }
  else{
    stop("AWG not recognized")
  }
}

