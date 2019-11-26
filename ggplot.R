setwd("/home/user/education/rprogs")

library(tidyverse)
mpg
?mpg
ggplot(data=mpg) +
    geom_point(mapping = aes(x=displ, y = hwy))
ggplot(data=mpg)
nrow(mtcars)
ncol(mtcars)
ggplot(data = mpg) +
    geom_point(mapping = aes(x = hwy, y = cyl))
ggplot(data = mpg) +
    geom_point(mapping = aes(x = class, y = drv))

ggplot(data = mpg) +
    geom_point(mapping = aes(x = displ, y = hwy, color = class))#color, size, alpha, shape
ggplot(data = mpg) +
    geom_point(mapping = aes(x = displ, y = hwy), colour = "red")
?mpg
glimpse(mpg)#produces types of each variables
ggplot(data = mpg) +
    geom_point(mapping = aes(x = cty, y = hwy, color = displ<5))
#facets
x11()
ggplot(data = mpg) +
    geom_point(mapping = aes(x=displ, y = hwy))+
    facet_wrap(~class)

ggplot(data = mpg) +
    geom_point(mapping = aes(x=displ, y = hwy))+
    facet_grid(drv~cyl)
ggplot(data = mpg)+
    geom_point(mapping = aes(x=drv, y = cyl))
ggplot(data = mpg) +
    geom_point(mapping = aes(x=displ, y = hwy))+
    facet_wrap(~year)
ggplot(data = mpg) +
    geom_point(mapping = aes(x=displ, y = hwy))+
    facet_grid(.~class)
ggplot(data = mpg) +
    geom_point(mapping = aes(x=displ, y = hwy))+
    facet_grid(.~drv)
?facet_wrap

ggplot(data = mpg) +
    geom_smooth(mapping = aes(x = displ, y = hwy,color=drv))

ggplot(data = mpg, mapping = aes(x=displ, y = hwy)) +
    geom_point(mapping = aes(color = class))+
    geom_smooth(data = filter(mpg, class == "subcompact"),se = FALSE)
?filter
ggplot(data = mpg) +
    geom_area(mapping = aes(x = displ, y = hwy))#boxplot,histogram,area,line
#ex6
#1
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
    geom_point() +
    geom_smooth(se = FALSE)
#2
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
    geom_point() +
    geom_smooth(mapping = aes(group = drv), se = FALSE)
#3
ggplot(data = mpg, mapping = aes(x = displ, y = hwy, group = drv, color = drv)) +
    geom_point() +
    geom_smooth( se = FALSE)
#4
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
    geom_point(mapping = aes(color = drv)) +
    geom_smooth(se = FALSE)
#5
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
    geom_point(mapping = aes(color = drv)) +
    geom_smooth(mapping = aes(linetype = drv),se = FALSE)
#6
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
    geom_point(mapping = aes(color = drv)) 
#statistical transformation
?diamonds
diamonds
ggplot(data = diamonds)+
  geom_bar(mapping = aes(x = cut))
?geom_bar
x11()
ggplot(data = diamonds)+
  stat_summary(
    mapping = aes(x=cut, y = depth),
    fun.ymin = min,
    fun.ymax = max,
    fun.y = median
  )
?stat_summary
#1
x11()
ggplot(data = diamonds)+
  geom_pointrange(
    mapping = aes(x=cut, y = depth),
    stat = "summary",
    fun.ymin = min,
    fun.ymax = max,
    fun.y = median
  )
#2













