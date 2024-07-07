//
//  Navbar.swift
//  colombia
//
//  Created by Brayan Henao on 7/07/24.
//

import Foundation
import SwiftUI
import SwiftUIRouter

struct Navbar: View {
    @EnvironmentObject var navigator: Navigator
    
    var body: some View {
        HStack{
            Button(action: {
                navigator.goBack()
            }){
                Image(systemName: "chevron.left")
                    .foregroundColor(Color.white)
            }
            Spacer()
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .top)
        .padding(.horizontal, 15)
        .padding(.vertical,13)
        .background(Color.darkGreen)
    }
}

#Preview {
    Navbar()
}
