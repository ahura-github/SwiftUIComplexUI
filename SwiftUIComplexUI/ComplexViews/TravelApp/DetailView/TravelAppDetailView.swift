//
//  TravelAppDetailView.swift
//  SwiftUIComplexUI
//
//  Created by Amirreza Zarepour on 3/28/22.
//

import SwiftUI

struct TravelAppDetailView: View {
    
    @Binding var place: TravelAppPlace
    @Binding var shouldShowDetail: Bool
    
    var body: some View {
        VStack{
            ZStack(alignment: .topTrailing){
                
                Image(place.image)
                    .resizable()
                    .cornerRadius(25)
                
                Button(action: {
                    withAnimation {
                        shouldShowDetail = false
                    }
                }){
                    
                    Image(systemName: "xmark")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.black.opacity(0.7))
                        .clipShape(Circle())
                }
                .padding(.top, Screen.Edge.topSafeArea + 10)
                .padding(.trailing)
            }
            
            VStack(alignment: .leading, spacing: 12){
                Text(place.name)
                    .font(.title)
                    .fontWeight(.bold)
                
                
                HStack(spacing: 12){
                    Image(systemName: "mappin.circle.fill")
                        .font(.system(size: 25, weight: .bold))
                    
                    
                    Text(place.country)
                        .foregroundColor(.gray)
                        
                    
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                        .padding(.leading, 5)
                    
                    
                    Text("5")
                        .foregroundColor(.gray)
                }
                
                
                Text(place.description)
            }
            .padding(.horizontal, 25)
            .padding(.bottom, 20)
            .foregroundColor(.black)
            
            HStack{
                HStack(spacing: 15){
                Text("$ 320")
                    .font(.title)
                    .fontWeight(.bold)
                
                
                Text("( 3 Days )")
                    .font(.title)
            }
                    .padding(.leading, 20)
                
                Spacer()
                
                Button(action: {}){
                    Text("Book Now")
                        .font(.system(size: 22))
                        .padding(.vertical, 25)
                        .frame(width: Screen.Size.width / 2.5)
                        .background(Color("TravelAppPurple"))
                        .clipShape(TravelAppShape())
                        .foregroundColor(.white)
                }
            }
        }
    }
}

struct TravelAppDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TravelAppDetailView(place: .constant(TravelAppData.instance.places[0]), shouldShowDetail: .constant(true))
    }
}
