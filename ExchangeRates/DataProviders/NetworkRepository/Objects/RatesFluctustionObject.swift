//
//  RatesFluctustionObject.swift
//  ExchangeRates
//
//  Created by Ezequias Santos on 18/10/23.
//

import Foundation

typealias RatesFluctustionObject = [String: FluctuationObject]

struct FluctuationObject: Codable {
    let change: Double
    let changePct: Double
    let endRate: Double

    enum CodingKeys: String, CodingKey {
        case change
        case changePct = "change_pct"
        case endRate = "end_rate"
    }
}
