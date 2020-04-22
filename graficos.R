install.packages("tidyverse")
library(tidyverse)

#esses são estudos do meu livro de R

dados <- mpg

ggplot(data = dados) +
  geom_point(mapping = aes(x = displ, y = hwy))

ggplot(data = dados) +
  geom_point(mapping = aes(x = displ, y = hwy, color = class)) + 
  facet_grid(drv~cyl)


ggplot(data = dados) +
  geom_point(mapping = aes(x = displ, y = hwy, color = class))

ggplot(data = dados) +
  geom_smooth(mapping = aes(x = displ, y = hwy, linetype = drv)) +
  geom_point(mapping = aes(x = displ, y = hwy, color = class))

#sem o linetype
ggplot(data = dados) +
  geom_smooth(mapping = aes(x = displ, y = hwy)) +
  geom_point(mapping = aes(x = displ, y = hwy, color = class))

#MOdelo global de variavel do grafico
ggplot(data = dados, mapping = aes(x = displ, y = hwy)) +
  geom_smooth() +
  geom_point()

#MOdelo global de variavel do grafico identico ao modelo antigo com a cor da classe
ggplot(data = dados, mapping = aes(x = displ, y = hwy)) +
  geom_smooth() +
  geom_point(mapping = aes(color = class))


#filtro de dado na camada do smooth

ggplot(data = dados, mapping = aes(x = displ, y = hwy)) +
  geom_smooth(data = filter(mpg, class == "subcompact"), se = FALSE) +
  geom_point(mapping = aes(color = class))
#testinho
ggplot(data = dados, mapping = aes(x = displ, y = hwy)) +
  geom_smooth(data = filter(mpg, class == "subcompact"), se = FALSE) +
  geom_smooth(data = filter(mpg, class == "midsize"), se = FALSE) +
  geom_point(mapping = aes(color = class))

ta alterado
