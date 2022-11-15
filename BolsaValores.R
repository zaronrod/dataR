install.packages('quantmod')
install.packages('TTR')

library('TTR')
library('quantmod')

df_stock <- getSymbols('ODPV3.SA',src='yahoo',auto.assign=FALSE)

class(df_stock)

nrow(df_stock)

tail(df_stock,2)

plot(df_stock$ODPV3.SA.Close,main = 'Stock Price')

chart_Series(df_stock$ODPV3.SA.Close,name="Stock Price") +

chartSeries(df_stock$ODPV3.SA.Close,name="Stock Price",theme = 'white',subset='2018::2020')

