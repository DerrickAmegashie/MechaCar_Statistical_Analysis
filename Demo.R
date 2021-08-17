
demo_table <- read.csv(file='demo.csv',check.names=F,stringsAsFactors = F)
library(jsonlite)
fromJSON()
demo_table2 <- fromJSON(txt='demo.json')
demo_table[3,3]
demo_table$"Vehicle_Class"[2]
demo_table$"Vehicle_Class"
filter_table <- demo_table2[demo_table2$price > 10000,]
filter_table <- demo_table2[demo_table2$price > 10000,]
