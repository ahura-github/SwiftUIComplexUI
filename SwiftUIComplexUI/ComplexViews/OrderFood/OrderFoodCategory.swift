//
//  FoodCategory.swift
//  SwiftUIComplexUI
//
//  Created by Amirreza Zarepour on 3/27/22.
//

import SwiftUI

struct OrderFoodCategory: View {
    
    @State var selectedCategory = 1
    
    var body: some View {
        
        HStack(spacing: 15){
            OrderFoodCategoryCell(title: "Chinese", index: 1, isSelected: $selectedCategory)
                .onTapGesture {
                    selectedCategory = 1
                }
            
            OrderFoodCategoryCell(title: "Persian", index: 2, isSelected: $selectedCategory)
                .onTapGesture {
                    selectedCategory = 2
                }
            OrderFoodCategoryCell(title: "Indian", index: 3, isSelected: $selectedCategory)
                .onTapGesture {
                    selectedCategory = 3
                }
        }
    }
}

struct FoodCategory_Previews: PreviewProvider {
    static var previews: some View {
        OrderFoodCategory()
    }
}


