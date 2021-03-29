#install packages
install.packages(c("ggplot2", "ggExtra", "ggthemes"))

library(ggplot2)
library(ggExtra)
library(ggthemes)

#plots the scatterplot
p <- ggplot(faithful, aes(waiting, eruptions)) + geom_point() + theme_tufte(ticks=FALSE)
#plots with scatterplot and histogram
ggMarginal(p, type = "histogram", fill="transparent")

ggplot(mtcars, aes(x = row.names(mtcars), y = wt)) + geom_point() + theme_tufte(ticks = FALSE) + theme(axis.text.x = element_text(angle = 90))
ggMarginal(mtcars, type = "histogram", fill = "transparent")

