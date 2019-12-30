# CurrencyConversion

A description of this package.
This swift package is created is for the demo/POC purpose.Total 3 APIs/methods are exposed for different use depending upon the forex application requirement. Under the hood API being used to get all data.
https://api.myjson.com/bins/100fjy 
* List of exposed methods as below mentioned.
* getAvailableCurrencies
  * This  is useful to fetch all required data for forex functionality to work. This returns array of custom model  'Currency'. All required data including Currency name, country name, currency code, sell/buy rate and last updated timing is available in shot.
  *This is Async API and the completition handler provides required result i.e   [Currency]-array of all available currency.
* getBuyRateFor
  * This  is helper method to fetch buy rate and lastupdatedtime for given currency through AUD. This returns either buy rate or error.
  * This is Async API which expects currency code and the completition handler provides required result i.e   BuyRate or  CurrencyConversionError for given currency code.
* getSellRateFor
  * is helper method to fetch sell rate and lastupdatedtime for given currency through AUD. This returns either sell rate or error.
  * This is Async API which expects currency code and the completition handler provides required result i.e   SellRate or  CurrencyConversionError for given currency code.
 
