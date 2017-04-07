# WeatherForecast

XCode 8.2.1 was used building it, tested in iPhone 7 plus simulator.

Open .xcworspace file, as I am using cocoapods services(Alamofire, SwiftyJson, MBProgressHUD)

When user types a city(national capital) name, we try to fetch it's ISO 3166 country code using https://restcountries.eu/ api.

So city string is formed by appending to searchText as per the Open weather API requirement. 
However the listed api, returns older data.

Example: Search (Tokyo) in search bar, it would generate city string like (Tokyo,JP) then it would be passed to OpenWeather city api.

Limitations:
It only takes Capital City name in search field, if given wrong name it crashes, need to fix it.

Improvents expected:

Structuring code, like keeping webservice and model separate is something is very much required in order to have clear segregation of code.
Using value types such as struct and enums to leverage advantage of Swift
Using custom cell, more relevant information can be displayed.
Further more Google places api can be used to look for any area weather info!

