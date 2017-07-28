
library(magrittr)
library(highcharter)
highchart() %>% 
hc_title(text = "Qtd de sku na semana que tiveram limitação de estoque") %>% 
hc_add_series_scatter(tabela_analise$SEMANA, tabela_analise$POSSUI_LIM_ETQ) %>% 
hc_xAxis(title = list(text = "Semana")) %>% 
hc_yAxis(title = list(text = "QTD_LIM_ETQ"))



library("highcharter")
data(diamonds, mpg, package = "ggplot2")
hchart(mpg, "scatter", hcaes(x = displ, y = hwy, group = class))



library(plotly)
p <- ggplot(tabela_analise,aes(SEMANA,POSSUI_LIM_ETQ)) +
  geom_point(colour = "#79a6d2", show.legend = F, size = 2) + 
  labs(x = "Semana",y = "QTD_LIM_ETQ")

ggplotly(p)
