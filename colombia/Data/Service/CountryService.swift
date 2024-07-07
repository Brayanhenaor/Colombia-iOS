//
//  CountryService.swift
//  colombia
//
//  Created by Brayan Henao on 6/07/24.
//

import Foundation


protocol CountryService {
    func fetchCountryData() async throws -> CountryResponse
}

struct CountryServiceImpl : CountryService{
    func fetchCountryData() async throws -> CountryResponse {
        guard let url = URL(string: "https://api-colombia.com/api/v1/Country/Colombia") else { fatalError("Missing URL") }
        let urlRequest = URLRequest(url: url)
        
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        
        guard (response as? HTTPURLResponse)?.statusCode == 200 else { fatalError("Error while fetching data") }
        
        let decodedCountry = try JSONDecoder().decode(CountryResponse.self, from: data)
        
        return decodedCountry
    }
}
