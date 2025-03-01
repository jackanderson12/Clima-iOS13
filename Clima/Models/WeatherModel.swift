//
//  WeatherModel.swift
//  Clima
//
//  Created by Jack Anderson on 1/19/22.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel {
    let conditionId: Int
    let cityName: String
    let temperature: Double
    
    var temperatureString: String {
        return String(format: "%.1f", temperature)
    }
    
    var conditionName: String {
        switch conditionId {
        case 200 ..< 232:
            return "cloud.bolt.rain"
        case 300 ..< 321:
            return "cloud.drizzle"
        case 500 ..< 531:
            return "cloud.rain"
        case 600 ..< 622:
            return "cloud.snow"
        case 700 ..< 781:
            return "wind"
        case 800:
            return "sun.max"
        case 801 ..< 804:
            return "cloud"
        default:
            return "cloud"
        }
    }

}
