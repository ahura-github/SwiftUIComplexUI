//
//  BottomBar.swift
//  OrderDrink
//
//  Created by Amirreza Zarepour on 7/15/21.
//

import SwiftUI

struct Trapezius: Shape {
    func path(in rect: CGRect) -> Path {
        return Path { path in
            path.move(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: rect.width, y: 0))
            path.addLine(to: CGPoint(x: rect.width, y: rect.height))
            path.addLine(to: CGPoint(x: 0, y: rect.height - 40))
           
        }
    }
}

