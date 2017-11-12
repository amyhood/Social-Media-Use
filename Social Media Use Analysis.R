library(tidyverse)
library(reshape2)

#read in data
data <- read_csv("social media use B.csv")

data_melt <- melt(data3)

ggplot(data_melt, aes(x = Month, y = value, fill = variable)) +
  geom_bar(stat = "identity")+
  scale_fill_manual("variable", 
                    values = c("Twitter" = "plum", "Facebook" = "sky blue", "Instagram" = "pink"))+
  theme_bw()
  