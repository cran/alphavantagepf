## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(alphavantagepf)

## -----------------------------------------------------------------------------
av_api_key("YOUR_API_KEY")
print(av_api_key())

## -----------------------------------------------------------------------------
av_funhelp("SERIES_INTRADAY")

## ----eval=F-------------------------------------------------------------------
# av_get_pf("IBM","TIME_SERIES_INTRADAY") |> head()
# 
#    symbol  timestamp  open  high   low close   volume
#    <char>     <IDat> <num> <num> <num> <num>    <int>
# 1:    IBM 1999-11-01  98.5  98.8  96.4  96.8  9551800
# 2:    IBM 1999-11-02  96.8  96.8  93.7  94.8 11105400

## ----eval=F-------------------------------------------------------------------
# av_get_pf("","TOP_GAINERS_LOSERS")
# 
# Key: <variable>
#                symbol             variable     ltype           value_df                                value_str value_num
#                <char>               <char>    <char>             <list>                                   <char>     <num>
# 1: TOP_GAINERS_LOSERS         last_updated   numeric             [NULL]           2026-01-05 16:15:59 US/Eastern      2026
# 2: TOP_GAINERS_LOSERS             metadata character             [NULL] Top gainers, losers, and most actively t        NA
# 3: TOP_GAINERS_LOSERS most_actively_traded      list <data.frame[20x5]>                                     NULL        NA
# 4: TOP_GAINERS_LOSERS          top_gainers      list <data.frame[20x5]>                                     NULL        NA
# 5: TOP_GAINERS_LOSERS           top_losers      list <data.frame[20x5]>                                     NULL        NA

## ----eval=F-------------------------------------------------------------------
# av_get_pf("","TOP_GAINERS_LOSERS")  |> av_extract_df("top_losers")
# 
# Key: <variable>
#                symbol             variable     ltype           value_df                                value_str value_num
#                <char>               <char>    <char>             <list>                                   <char>     <num>
# 1: TOP_GAINERS_LOSERS         last_updated   numeric             [NULL]           2026-01-05 16:15:59 US/Eastern      2026
# 2: TOP_GAINERS_LOSERS             metadata character             [NULL] Top gainers, losers, and most actively t        NA
# 3: TOP_GAINERS_LOSERS most_actively_traded      list <data.frame[20x5]>                                     NULL        NA
# 4: TOP_GAINERS_LOSERS          top_gainers      list <data.frame[20x5]>                                     NULL        NA
# 5: TOP_GAINERS_LOSERS           top_losers      list <data.frame[20x5]>                                     NULL        NA

