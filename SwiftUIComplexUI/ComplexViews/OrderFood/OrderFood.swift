//
//  OrderFood.swift
//  SwiftUIComplexUI
//
//  Created by Amirreza Zarepour on 3/27/22.
//

import Foundation

struct OrderFood: Identifiable, Hashable{
    var id: Int
    var name:     String
    var category: String
    var pic:      String
    var price:    String
}
