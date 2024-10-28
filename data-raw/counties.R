## code to prepare `counties` dataset goes here

connecticut_xwalk <- paste0("https://www2.census.gov/geo/docs/",
                            "reference/ct_change/ct_cou_to_cousub_crosswalk.txt")

ct <- read.csv(connecticut_xwalk, sep = "|", header = TRUE,
               colClasses = "character",
               nrows = length(readLines(connecticut_xwalk)) - 16)

usethis::use_data(counties, overwrite = TRUE)
