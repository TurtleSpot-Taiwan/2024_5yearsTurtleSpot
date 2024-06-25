library(tidyverse)
library(data.table)
library(chisq.posthoc.test)
library(car)


raw_data <- fread("Turtle_MRD.csv", sep = ",", colClasses = "character", encoding = "UTF-8")

raw_data$retentionDay <- as.numeric(raw_data$retentionDay)

qqPlot(lm(retentionDay~size, data = raw_data), simulate = TRUE, main = "Q-Q Plot", lables = FALSE)


bartlett.test(retentionDay~size, data = raw_data)
library(ggpubr)
my_comparisons <- list( c("adult", "sub-adult"), c("sub-adult", "juvenile"), c("adult", "juvenile") )

ggboxplot(raw_data, x = "size", y = "retentionDay", 
          color = "size", palette = c("#00AFBB", "#E7B800", "#FC4E07"),
          order = c("adult", "sub-adult", "juvenile"))+ 
  stat_compare_means(comparisons = my_comparisons)+ # Add pairwise comparisons p-value
  stat_compare_means(label.y = 5000)     # Add global p-value


kruskal.test(retentionDay ~ size, data = raw_data)