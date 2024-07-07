//
//  CountryRepositoryImpl.swift
//  colombia
//
//  Created by Brayan Henao on 6/07/24.
//

import Foundation

struct CountryRepositoryImpl: CountryRepository {
    private let service: CountryService
    
    init(service: CountryService) {
        self.service = service
    }
    
    func getCountry() async throws -> CountryResponse {
        try await service.fetchCountryData()
    }
}
