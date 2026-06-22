## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----eval=TRUE----------------------------------------------------------------
require(alphavantagepf)

## ----eval=FALSE---------------------------------------------------------------
# av_runShiny()

## ----echo=FALSE, out.width="100%"---------------------------------------------
knitr::include_graphics("img/av_opts.jpg")

## ----echo=FALSE, out.width="100%"---------------------------------------------
knitr::include_graphics("img/assetlist.gif")

## ----echo=FALSE, out.width="100%"---------------------------------------------
knitr::include_graphics("img/activets.jpg")

## ----echo=FALSE, out.width="100%"---------------------------------------------
knitr::include_graphics("img/ibit_fv.jpg")

## ----echo=FALSE, out.width="100%"---------------------------------------------
knitr::include_graphics("img/optsearch.jpg")

## ----eval=FALSE, echo=TRUE, out.width="100%"----------------------------------
# # av_add_data can be used simply, but
# av_add_data(av_get_pf("IBM","TIME_SERIES_DAILY_ADJUSTED"))
# 
# # For many assets, use this
# asset_df <- data.frame(symbol=c("HYG"),type=c("ETF"),currency=c("USD"), name=c("HY ETF"))
# av_add_data(av_get_pf("HYG","TIME_SERIES_DAILY_ADJUSTED"), assettypes=asset_df)
# 
# # External Data
# suppressMessages(require(quantmod))
# ffdta <- as.data.table(quantmod::getSymbols("FEDFUNDS",src="FRED",auto.assign=FALSE))
# ffdta <- ffdta[,.(DT_ENTRY=index,close=FEDFUNDS,adjusted_close=FEDFUNDS,symbol="FEDFUNDS")]
# av_add_data(ffdta)
# 
# dump_inv() |> gt()

## ----echo=FALSE, out.width="100%"---------------------------------------------
knitr::include_graphics("img/data.jpeg")

## ----echo=FALSE, out.width="100%"---------------------------------------------
knitr::include_graphics("img/wFedFunds.jpg")

