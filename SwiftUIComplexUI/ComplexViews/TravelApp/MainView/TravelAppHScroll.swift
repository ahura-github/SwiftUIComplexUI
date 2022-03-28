//
//  TravelAppCarousel.swift
//  SwiftUIComplexUI
//
//  Created by Amirreza Zarepour on 3/28/22.
//

import SwiftUI

struct TravelAppHScroll: View {
    
    //MARK: - Var
    @Binding var places: [TravelAppPlace]
    @Binding var shouldExpand: Bool
    
    var size: CGRect
    
    //MARK: - MainBody
    var body: some View {
        HStack(spacing: 0){
            ForEach(places, id: \.self){ place in
                ZStack(alignment: .bottom){
                    Image(place.image)
                        .resizable()
                        .aspectRatio(1, contentMode: .fill)
                        .frame(width: size.width - 30, height: size.height)
                        .cornerRadius(25)
                        ///Due to taking extra space by fill content mode we refrain it by bounding it to a content shape
                        .contentShape(Rectangle())
                        .onTapGesture {
                            withAnimation {
                                shouldExpand = true
                            }
                           
                        }
                    
                    
                    detailView(place: place)
                        .padding(.horizontal, 25)
                        .padding(.bottom, 20)
                        .foregroundColor(.white)
                        
                }
                .frame(size)
                
            }
        }
    }
}



extension TravelAppHScroll{
    private func detailView(place: TravelAppPlace) -> some View {
        VStack(alignment: .leading, spacing: 12){
            Text(place.name)
                .font(.title)
                .fontWeight(.bold)
            
            
            HStack(spacing: 12){
                Image(systemName: "mappin.circle.fill")
                    .font(.system(size: 25, weight: .bold))
                
                
                Text(place.country)
                    
                
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                    .padding(.leading, 5)
                
                
                Text("5")
            }
            
            
            Text(place.description)
        }
    }
}
