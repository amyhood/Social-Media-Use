library(tidyverse)
library(reshape2)

#read in data
data <- read_csv("social media use B.csv")

data_melt <- melt(data3)

#bargraph with variables in one bar
ggplot(data_melt, aes(x = Month, y = value, fill = variable)) +
  geom_bar(stat = "identity")+
  scale_fill_manual("variable", 
                    values = c("Twitter" = "plum", "Facebook" = "sky blue", "Instagram" = "pink"))+
  theme_bw()

#bargraph with variables in seperate clustered bars
ggplot(data_melt, aes(Month, value))+
  geom_bar(stat = "identity", aes(fill = variable), position = "dodge") +
  xlab("Months") + ylab("Count") +
  ggtitle("Social Media Use") +
  theme_bw()

## TODO sort months by month instead of alphabetically
  