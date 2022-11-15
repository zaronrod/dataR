install.packages('quantmod')
install.packages('TTR')

library('TTR')
library('quantmod')

df_intc <- getSymbols('ODPV3.SA',src='yahoo',auto.assign=FALSE)

class(df_intc)

nrow(df_intc)

tail(df_intc,2)

plot(df_intcINTC.Close,main = 'Stock Price') +
chart_Series(df_intc$INTC.Close,name="Stock Price") +
chartSeries(df_intc,name="Stock Price",theme = 'white',subset='2018::2020')

