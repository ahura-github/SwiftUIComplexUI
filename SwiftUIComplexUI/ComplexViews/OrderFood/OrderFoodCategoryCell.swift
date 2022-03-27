//
//  FoodCategoryCell.swift
//  SwiftUIComplexUI
//
//  Created by Amirreza Zarepour on 3/27/22.
//

import SwiftUI

struct OrderFoodCategoryCell: View {
    var title: String
    var index: Int
    
    @Binding var isSelected: Int
    
    
    var body: some View {
            Text(title)
            .foregroundColor(isSelected == index ? .white : .black)
            .padding(8)
            .background(isSelected == index ? .black : .white)
            .cornerRadius(15)
            .animation(.default, value: isSelected)
    }
}

struct FoodCategoryCell_Previews: PreviewProvider {
    static var previews: some View {
        OrderFoodCategoryCell(title: "Chinese",index: 1 ,isSelected: .constant(1))
    }
}
