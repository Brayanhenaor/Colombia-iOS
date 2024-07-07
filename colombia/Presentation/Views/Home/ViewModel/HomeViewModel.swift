//
//  HomeViewModel.swift
//  colombia
//
//  Created by Brayan Henao on 6/07/24.
//

import Foundation

final class HomeViewModel: ObservableObject{
    
    private let countryRepository: CountryRepository
    
    @Published var countryData: CountryResponse? = nil
    
    init(countryRepository: CountryRepository) {
        self.countryRepository = countryRepository
    }
    
    func loadData() async{
        do{
            let data = try await countryRepository.getCountry()
            
            DispatchQueue.main.async{
                self.countryData = data
            }
        }catch{
            
        }
        
    }
}
