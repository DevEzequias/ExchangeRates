//
//  RatesFluctuationDataProvider.swift
//  ExchangeRates
//
//  Created by Ezequias Santos on 18/10/23.
//

import Foundation

protocol RatesFluctuationDataProviderDelegate: DataProviderManagerDelegate {
    func success(model: RatesFluctustionObject)
}

class RatesFluctuationDataProvider: DataProviderManager<RatesFluctuationDataProviderDelegate, RatesFluctustionObject>  {
    
    private let ratesStore: RatesStore
    
    init(ratesStore: RatesStore) {
        self.ratesStore = ratesStore
    }
    
    func fetchFluctuation(by base: String, from symbols: [String], startDate: String, endDate: String) {
        Task.init {
            do {
                let model = try await ratesStore.fetchFluctuation(by: base, from: symbols, startDate: startDate, endDate: endDate)
                delegate?.success(model: model)
            } catch {
                delegate?.errorData(delegate, error: error)
            }
        }
    }
}
