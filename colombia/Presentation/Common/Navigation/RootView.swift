//
//  RootView.swift
//  colombia
//
//  Created by Brayan Henao on 6/07/24.
//

import SwiftUI
import SwiftUIRouter


struct RootView: View{
    var body: some View{
        SwiftUIRouter.Router {
            SwitchRoutes {
                
                Route(
                    "touristic",
                    content: TouristicView()
                )
                Route {
                    HomeViewRouter.view()
                }
            }
        }
    }
}
