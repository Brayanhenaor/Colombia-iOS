//
//  CountryResponse.swift
//  colombia
//
//  Created by Brayan Henao on 6/07/24.
//

import Foundation

struct CountryResponse: Codable {
    let id: Int
    let name, description, stateCapital: String
    let surface, population: Int
    let languages: [String]
    let timeZone, currency, currencyCode, currencySymbol: String
    let isoCode, internetDomain, phonePrefix, radioPrefix: String
    let aircraftPrefix, subRegion, region: String
    let borders: [String]
    let flags: [String]
}
