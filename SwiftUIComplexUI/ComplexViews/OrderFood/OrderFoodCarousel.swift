//
//  OrderFoodCarousel.swift
//  SwiftUIComplexUI
//
//  Created by Amirreza Zarepour on 3/27/22.
//

import SwiftUI

struct OrderFoodCarousel: View {
    
    @Binding var page: Int
    
    var body: some View {
        HStack{
            ForEach(OrderFoodData.instance.foods, id: \.self){ food in
                //delete
                OrderFoodCell(
                    food: food,
                    width: Screen.Size.width, page: $page
                )
            }
        }
    }
}

struct OrderFoodCarousel_Previews: PreviewProvider {
    static var previews: some View {
        OrderFoodCarousel(page: .constant(1))
    }
}
