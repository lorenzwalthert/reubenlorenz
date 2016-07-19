a <- 1

g<-c(2, 3)

mean(g, na.rm = F)

mean(g)

mean(c(min(g), max(1, 2, 3, 4)), na.rm = T)


######
library(ggplot2)
mpg<-mpg
mpg$cyl<-as.factor(mpg$cyl)

ggplot(mpg, mapping = aes(x = displ, y = hwy, color = cyl, size = cyl)) + geom_point(alpha = 0.11)


#######
ggplot(mpg, aes(x = displ)) + geom_density(fill = "black")

ggplot(data = diamonds) + 
        geom_bar(mapping = aes(x = cut, fill = clarity), position = "dodge")

ggplot(data = diamonds) + 
        geom_bar(mapping = aes(x = cut, fill = clarity), position = "stack")