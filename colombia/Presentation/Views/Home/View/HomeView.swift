//
//  HomeView.swift
//  colombia
//
//  Created by Brayan Henao on 6/07/24.
//

import Foundation
import SwiftUI
import SwiftUIRouter

struct HomeView: View{
    @ObservedObject var viewModel: HomeViewModel
    @State var showMoreInfo: Bool = false
    @EnvironmentObject var navigator: Navigator
    
    var body: some View {
        
        ZStack{
            Image(.background)
                .resizable()
                
            ZStack{
                
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
            .background(Color.black.opacity(0.4))
            
            VStack(alignment:.leading, spacing: 0){
                
                VStack(alignment:.leading) {
                    Text(viewModel.countryData?.name ?? "")
                        .bold()
                        .font(.largeTitle)
                        .foregroundColor(.white)
                    
                    Text(viewModel.countryData?.stateCapital ?? "")
                        .font(.title2)
                        .foregroundColor(.white)
                    
                    Text(viewModel.countryData?.subRegion ?? "")
                        .font(.subheadline)
                        .foregroundColor(.white)
                        .padding([.bottom], 10)
                }
                .padding(.horizontal, 15)
                
               
                MenuItem(
                    color: Color.darkGreen,
                    offset: 10,
                    onTap: {
                        withAnimation {
                            showMoreInfo.toggle()
                        }
                    }
                ){
                    HStack {
                        Text("Mas info")
                            .multilineTextAlignment(.leading)
                            .font(.title2)
                            .foregroundColor(.white)
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(.white)
                    }
                    
                    if showMoreInfo {
                        Text(viewModel.countryData?.description ?? "")
                            .font(.body)
                            .foregroundColor(.white)
                            .padding(.vertical, 10)
                    }
                }
                    
                    
                MenuItem(
                    color: Color.white,
                    offset: 0,
                    onTap: {
                        navigator.navigate("touristic")
                    }
                ){
                    HStack {
                        Text("Sitios turisticos")
                            .font(.title2)
                            .foregroundColor(.black)
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(.black)
                    }
                }
                
            }
            .frame(
                maxWidth: .infinity,
                maxHeight: .infinity,
                alignment: .bottomLeading
            )
            
            
        }
        .ignoresSafeArea()
        .onAppear{
            Task{
                await viewModel.loadData()
            }
            
            
        }
    }
}

struct MenuItem<Content:View> : View {
    let color: Color
    let offset: CGFloat
    let onTap: ()-> Void
    @ViewBuilder let content: () -> Content
    
    var body: some View {
        VStack(alignment: .leading) {
            content()
            
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(18)
        .padding(.bottom,10)
        .frame(maxWidth: .infinity)
        .background(color)
        .clipShape(
            .rect(
                topLeadingRadius: 20,
                topTrailingRadius: 20
            )
        )
        .offset(y:offset)
        .onTapGesture {
            onTap()
        }
    }
}


#Preview {
    HomeViewRouter.view()
}
