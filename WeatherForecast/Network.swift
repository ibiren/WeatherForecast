//
//  Network.swift
//  WeatherForecast
//
//  Created by Biren Subudhi on 06/04/2017.
//  Copyright © 2017 Biren Subudhi. All rights reserved.
//

import Foundation

protocol Network {
    func request(_ response: @escaping (Data?) -> ())
}
