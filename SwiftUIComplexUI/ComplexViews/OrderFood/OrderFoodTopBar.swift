//
//  OrderFoodTopBar.swift
//  SwiftUIComplexUI
//
//  Created by Amirreza Zarepour on 3/27/22.
//

import SwiftUI

struct OrderFoodTopBar: View {
    var body: some View {
        ZStack{
            title
            
            HStack{
                
                menuBarButton
                
                Spacer()
                
                profilePic
            }
            
            
        }.padding(.horizontal)
    }
}

struct OrderFoodTopBar_Previews: PreviewProvider {
    static var previews: some View {
        OrderFoodTopBar()
    }
}

extension OrderFoodTopBar{
    private var title:        some View {
        Text("Food Item")
            .foregroundColor(.black)
    }
    private var profilePic:   some View {
        Image("OrderFoodprofilepicture")
            .resizable()
            .scaledToFill()
            .frame(size: 30)
            .cornerRadius(5)
    }
    private var menuBarButton: some View {
        Image(systemName: "line.3.horizontal")
            .frame(size: 30)
            .background(Color.white)
            .cornerRadius(5)
        
    }
    
}
