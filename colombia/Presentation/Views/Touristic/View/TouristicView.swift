//
//  TouristicView.swift
//  colombia
//
//  Created by Brayan Henao on 6/07/24.
//

import Foundation
import SwiftUI
import SwiftUIRouter

struct TouristicView: View {
    
    var body: some View{
        ZStack{
            VStack{
                Navbar()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .background(Color.black)
    }
}
