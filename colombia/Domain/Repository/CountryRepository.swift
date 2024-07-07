//
//  CountryRepository.swift
//  colombia
//
//  Created by Brayan Henao on 6/07/24.
//

import Foundation

protocol CountryRepository {
    func getCountry() async throws -> CountryResponse
}
