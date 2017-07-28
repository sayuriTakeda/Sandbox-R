library(magrittr)
library(highcharter)
highchart() %>% 
  hc_title(text = "Qtd de sku na semana que tiveram limitação de estoque") %>% 
  hc_add_series_scatter(tabela_analise$SEMANA, tabela_analise$POSSUI_LIM_ETQ)



library("highcharter")
data(diamonds, mpg, package = "ggplot2")

hchart(mpg, "scatter", hcaes(x = displ, y = hwy, group = class))
