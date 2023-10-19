//
//  RatesApi.swift
//  ExchangeRates
//
//  Created by Ezequias Santos on 18/10/23.
//

import Foundation

enum HttpMethod: String {
    case get = "GET"
}

struct RatesApi {
    static let baseUrl = "https://api.apilayer.com/exchangerates_data"
    static let apiKey = "YwG6bQ4jZ4NNu6ozfATA2EQ14hYWI1ln"
    static let fluctuation = "/fluctuation"
    static let symbols = "/symbols"
    static let timeseries = "/timeseries"
}
