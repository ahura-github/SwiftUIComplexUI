//
//  TravelAppMainView.swift
//  SwiftUIComplexUI
//
//  Created by Amirreza Zarepour on 3/28/22.
//

import SwiftUI

struct TravelAppMainView: View {
    
    //MARK: - Var
    @State var places = TravelAppData.instance.places
    @State var shouldShowDetailView = false
    @State var index = 0
    //MARK: - MainBody
    var body: some View {
        ZStack{
            
            VStack{
                topBar
            
                GeometryReader{ proxy in
                    TravelAppCarousel(data: $places, index: $index, shouldShowDetailView: $shouldShowDetailView, size: proxy.frame(in: .global))
                       
                }
                .padding(.bottom, Screen.Edge.bottomSafeArea + 10)
                
                
                
                
            }
            .opacity(shouldShowDetailView ? 0 : 1)
            
            
             TravelAppDetailView(place: $places[index], shouldShowDetail: $shouldShowDetailView)
                .scaleEffect(shouldShowDetailView ? 1 : 0)
                .frame(width: shouldShowDetailView ? nil : 0, height: shouldShowDetailView ? nil : 0)
            
            .navigationBarHidden(true)
        }
        .background(background)
        .edgesIgnoringSafeArea(.all)
    }
}

struct TravelAppMainView_Previews: PreviewProvider {
    static var previews: some View {
        TravelAppMainView()
    }
}

extension TravelAppMainView {
    private var background: some View {
        Color.black.opacity(0.07)
            .edgesIgnoringSafeArea(.all)
    }
    private var topBar:     some View {
        HStack{
            Text("Travel")
                .font(.title)
                .fontWeight(.bold)
            
            
            Spacer()
            
            
            Text("\(index + 1)/\(places.count)")
                .foregroundColor(.gray)
               
            
        }
        .padding(.top, Screen.Edge.topSafeArea)
        .padding()
        
    }
    
    
    
}
