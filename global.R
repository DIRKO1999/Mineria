list.of.packages <- c("DT","quantmod","plotly","ggplot2", "shinydashboard", "shiny", "readr", "readxl", "xts", "dygraphs")
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
if(length(new.packages)) install.packages(new.packages)
lapply(list.of.packages,function(x){library(x,character.only=TRUE)}) 

vCC <- read_csv("graficas/1.csv", 
                col_types = cols(Date = col_date(format = "%d/%m/%Y")))

dED <- read_csv("graficas/2.csv", 
             col_types = cols(Date = col_date(format = "%d/%m/%Y")))

NL <- read_csv("graficas/3.csv", 
               col_types = cols(Date = col_date(format = "%d/%m/%Y")))

cMU <- read_csv("graficas/4.csv", 
                col_types = cols(Date = col_date(format = "%d/%m/%Y")))
  
cP <- read_csv("graficas/5.csv", 
               col_types = cols(Date = col_date(format = "%d/%m/%Y")))

cLJ <- read_csv("graficas/6.csv", 
                col_types = cols(Date = col_date(format = "%d/%m/%Y")))

dLL <- read_csv("graficas/7.csv", 
                col_types = cols(Date = col_date(format = "%d/%m/%Y")))

lF <- read_csv("graficas/8.csv", 
               col_types = cols(Date = col_date(format = "%d/%m/%Y")))

cDT <- read_csv("graficas/9.csv", 
                col_types = cols(Date = col_date(format = "%d/%m/%Y")))
  
cA <- read_csv("graficas/10.csv", 
               col_types = cols(Date = col_date(format = "%d/%m/%Y")))