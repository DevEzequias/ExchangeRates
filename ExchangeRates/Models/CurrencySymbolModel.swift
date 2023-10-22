//
//  CurrencySymbolModel.swift
//  ExchangeRates
//
//  Created by Ezequias Santos on 21/10/23.
//

import Foundation

struct CurrencySymbolModel: Identifiable {
    let id = UUID()
    var symbol: String
    var fullName: String
}
