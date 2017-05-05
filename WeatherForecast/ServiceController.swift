//
//  ServiceController.swift
//  WeatherForecast
//
//  Created by Biren Subudhi on 06/04/2017.
//  Copyright © 2017 Biren Subudhi. All rights reserved.
//

import Foundation

class ServiceController {

    func getWeather(city: String) {
        
        // This is a pretty simple networking task, so the shared session will do.
        let session = URLSession.shared

        let weatherURL = "\(Constants.Service.baseURL)?APPID=\(Constants.Service.API_KEY)&q=\(city)"
        
        guard let newURL = URL(string: weatherURL) else {
            print("url problems")
            return
        }
        
        let weatherRequestUrl = URLRequest(url: newURL)
        // The data task retrieves the data.
        // make the request

        let dataTask = session.dataTask(with: weatherRequestUrl) { (data: Data?, response: URLResponse?, error: Error?) in
            if let error = error {
                // Case 1: Error
                // We got some kind of error while trying to get data from the server.
                print("Error:\n\(error)")
            }
            else {
                // Case 2: Success
                // We got a response from the server!
                print("Raw data:\n\(data!)\n")
                let dataString = String(data: data!, encoding: String.Encoding.utf8)
                print("Human-readable data:\n\(dataString!)")
            }
        }
        dataTask.resume()
    }
    
    func getCityString(searchText : String?) -> Void {
        // This is a pretty simple networking task, so the shared session will do.
        let session = URLSession.shared
        
        guard let searchText = searchText else {
            return
        }
            
        let urlString = "\(Constants.Service.restcountryBaseUrl)\(searchText)"
        
        guard let newURL = URL(string: urlString) else {
            print("url problems")
            return
        }
        
        let cityURL = URLRequest(url: newURL)
        
        let task = session.dataTask(with: cityURL) { (data :Data?, response: URLResponse?, error: Error?) in
         
            if let error = error {
                // Case 1: Error
                // We got some kind of error while trying to get data from the server.
                print("Error:\n\(error)")
            }
            else {
                // Case 2: Success
                // We got a response from the server!
                print("Raw data:\n\(data!)\n")
                let dataString = String(data: data!, encoding: String.Encoding.utf8)
                print("Human-readable data:\n\(dataString!)")
            }

        }
        task.resume()
        
    }

}
