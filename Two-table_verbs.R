library("nycflights13")
library(dplyr)

remove(list = ls())

###### para entender o join ######

x <- data.frame(var1 = c("a", "b", "c"))

y <- data.frame(var1 = c("a", "c", "d"),
                var2 = 1:3)

left_join(x, y) # o left mantem tudo do A 
inner_join(x, y)

###### Two-table verbs ######

A <- flights %>% select(year:day, hour, origin, dest,tailnum,carrier)
B <- airlines

left_join(A,B)
# ou pode fazer 
A %>% left_join(B)

A %>% left_join(B) %>% select(year,month,carrier)

# add todas as possiveis combinações 
df1 <- data_frame(x = c(1, 1, 2), y = 1:3)
df2 <- data_frame(x = c(1, 1, 2), z = c("a", "b", "a"))
df1
df2
df1 %>% left_join(df2)

# Filter join 
df1 <- data_frame(x = c(1, 1, 3, 4), y = 1:4)
df2 <- data_frame(x = c(1, 1, 2), z = c("a", "b", "a"))
df1
df2
inner_join(df1,df2)
semi_join(df1,df2) # é tipo um inner join mas ignora a coluna que não tem na outra 
semi_join(df2,df1)

intersect(df1,df2)
setdiff(df1,df2)

df1 <- data_frame(x = 1, y = factor("a"))
df2 <- data_frame(x = 2, y = factor("b"))
df1
df2
full_join(df1, df2) %>% str()
