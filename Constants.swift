//
//  Constants.swift
//  WeatherForecast
//
//  Created by Biren Subudhi on 06/04/2017.
//  Copyright © 2017 Biren Subudhi. All rights reserved.
//


struct Constants {
    
    struct Service {
        static let API_KEY = "a9864e1a9f943313b7bb4423c3355a11"
        static let baseURL = "http://api.openweathermap.org/data/2.5/forecast?q="
        static let restcountryBaseUrl = "https://restcountries.eu/rest/v2/capital/"

    }
    
    struct Message {
        
        static let CheckingISOCountry = "Checking Country ISO value."
        static let wrongCityEntered = "Incorrect City! Please type full city name."
        static let successISOCountry = "Success, country ISO code:"
        static let checkingForecast = "Checking Weather Forecast.."
    }
    
}

