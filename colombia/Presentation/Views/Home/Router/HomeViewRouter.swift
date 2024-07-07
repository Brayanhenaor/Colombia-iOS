//
//  HomeViewRouter.swift
//  colombia
//
//  Created by Brayan Henao on 6/07/24.
//

import Foundation

struct HomeViewRouter{
    static func view() -> HomeView{
        return HomeView(
            viewModel: HomeViewModel(
                countryRepository: CountryRepositoryImpl(service: CountryServiceImpl())
            )
        )
    }
}
