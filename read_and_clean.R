library(tidyr)
library(dplyr)
library(readr)
library(readxl)

dat <- readxl::read_xlsx(path = "~/Data/Labor/2022_12_LaborActivity.xlsx", sheet = 2)
names(dat) <- stringr::str_replace_all(names(dat), "[:blank:]", "_")


all <- unique(dat$GLC_Desc)

ft <- c("Manager", "Technician Specialist", "Sr Technician", "Technician", "Master Technician")
tem <- c("Field Technician - Lead", "Field Technician")

tat <- dat %>% 
  select(Project_ID, )

