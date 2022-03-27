//
//  OrderFoodMainView.swift
//  SwiftUIComplexUI
//
//  Created by Amirreza Zarepour on 3/27/22.
//

import SwiftUI

struct OrderFoodMainView: View {
    
    @State var page = 0
    
    var body: some View {
        ZStack{
            background
            
            VStack{
                OrderFoodTopBar()
                
                Spacer()
                
                OrderFoodCategory()
                    .padding(.vertical)
                
                Spacer()
                
                GeometryReader{ proxy in
                    Carousel(width: Screen.Size.width, height: proxy.frame(in: .global).height, page: self.$page)
                }
               
                
                OdrderFoodPageControl(page: $page)
                
                Spacer()
            }
            .navigationBarHidden(true)
        }
    }
}

struct OrderFoodMainView_Previews: PreviewProvider {
    static var previews: some View {
        OrderFoodMainView()
    }
}

extension OrderFoodMainView {
    private var background: some View {
        Color("OrderFoodYellow")
            .edgesIgnoringSafeArea(.all)
    }
}
