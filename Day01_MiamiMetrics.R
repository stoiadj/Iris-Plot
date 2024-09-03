iris <- iris

install.packages("tidyverse")
library(tidyverse)

iris <- iris %>%
  filter(Species == "setosa")

ggplot(iris) +
  geom_point(aes(x=Petal.Length, y=Petal.Width))


ggplot(iris) +
  geom_point(aes(x=Petal.Length, y=Petal.Width), color="blue", shape=4) +
  labs(title="Flower Pedal Length and Width for Setosas",
       x="Petal Length",
       y="Petal Width") +
  theme(plot.title = element_text(face="bold", size=14, hjust=0.5))

ggsave("Iris_Plot_Setosas.png")
  
  
  