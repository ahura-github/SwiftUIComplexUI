//
//  OrderFoodData.swift
//  SwiftUIComplexUI
//
//  Created by Amirreza Zarepour on 3/27/22.
//

import Foundation
final class OrderFoodData{
    static let instance = OrderFoodData()
    
    
    private init(){}
    
    
    let foods = [
        OrderFood(id: 0, name: "Halim", category: "Chinese", pic: "OrderFood1", price: "25"),
        OrderFood(id: 1, name: "Kufte", category: "Mexican", pic: "OrderFood2", price: "20"),
        OrderFood(id: 2, name: "Soba", category: "Mexican", pic: "OrderFood3", price: "15"),
        OrderFood(id: 3, name: "Healthy Food", category: "Persian", pic: "OrderFood4", price: "30"),
        OrderFood(id: 4, name: "Vegetable Dish", category: "Persian", pic: "OrderFood5", price: "35")
    ]
}
