//
//  AppColor.swift
//  SwiftUIComplexUI
//
//  Created by Amirreza Zarepour on 3/18/22.
//

import struct SwiftUI.Color

struct AppColor:Equatable ,ExpressibleByStringLiteral{
    
    init(stringLiteral value: StringLiteralType) {
        name = value
    }
    
    var name: String
    
    var associatedColor: Color {
        Color(name)
    }
}
