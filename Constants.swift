//
//  Constants.swift
//  WeatherForecast
//
//  Created by Biren Subudhi on 06/04/2017.
//  Copyright © 2017 Biren Subudhi. All rights reserved.
//


struct Constants {
    
    struct Service {
        static let API_KEY = "b1b15e88fa797225412429c1c50c122a1"
        static let baseURL = "http://samples.openweathermap.org/data/2.5/forecast?q="
        static let restcountryBaseUrl = "https://restcountries.eu/rest/v2/capital/"

    }
    
    struct Message {
        
        static let CheckingISOCountry = "Checking Country ISO value."
        static let wrongCityEntered = "Incorrect City! Please type full city name."
        static let successISOCountry = "Success, country ISO code:"
        static let checkingForecast = "Checking Weather Forecast.."
    }
    
}

