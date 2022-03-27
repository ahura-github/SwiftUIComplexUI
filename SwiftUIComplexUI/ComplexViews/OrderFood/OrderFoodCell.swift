//
//  FoodCell.swift
//  SwiftUIComplexUI
//
//  Created by Amirreza Zarepour on 3/27/22.
//

import SwiftUI

struct OrderFoodCell: View {
    
    var food: OrderFood
    var width: CGFloat
    @Binding var page: Int
    
    var body: some View {
        VStack {
            VStack(spacing: 10){
                foodName
                
                category
                   
                Spacer(minLength: 0)
                foodImage
                    
                
                price
                    .padding(.top, 20)
                
                buyButton
                    .padding(.top, 20)
                
                Spacer(minLength: 0)
            }
            .padding(.vertical, 25)
            .padding(.horizontal, 20)
            .background(Color.white)
            .cornerRadius(25)
            .padding(.top, 25)
            .padding(.vertical, self.page == food.id ? 0 : 25)
            .padding(.horizontal, self.page == food.id ? 0 : 25)
            ///Increasing height and width if appearing on the screen
        }
        .frame(width: width)
    }
}

struct OrderFoodCell_Previews: PreviewProvider {
    static var previews: some View {
        OrderFoodCell(food: OrderFoodData.instance.foods[0], width: 300.0, page: .constant(1))
    }
}

extension OrderFoodCell {
    private var foodName:  some View {
        Text(food.name)
            .foregroundColor(.black)
            .font(.title)
            .fontWeight(.semibold)
    }
    private var category:  some View {
        Text(food.category)
            .foregroundColor(.secondary)
            .font(.subheadline)
            .fontWeight(.regular)
        
    }
    private var foodImage: some View {
        
        Image(food.pic)
          
            .resizable()
            .scaledToFill()
            .frame(
                width: width - (page == food.id ? 100 : 100),
                height: page == food.id ? 250 : 200)
            .clipped()
            .cornerRadius(20)
            
        
    }
    private var price:     some View {
        Text("$\(food.price)")
            .foregroundColor(.black)
            .fontWeight(.semibold)
            .font(.title2)
    }
    private var buyButton: some View {
        Button(action: {}){
            Text("Buy")
                .fontWeight(.regular)
                .padding(.vertical, 10)
                .padding(.horizontal, 30)
                
                
        }
        .background(Color("OrderFoodYellow"))
        .foregroundColor(.black)
        .clipShape(Capsule())
           
            
            
        
    }
}
