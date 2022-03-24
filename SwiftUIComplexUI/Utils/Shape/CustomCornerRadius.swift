//
//  CustomCornerRadius.swift
//  SwiftUIComplexUI
//
//  Created by Amirreza Zarepour on 3/18/22.
//
import SwiftUI

struct CustomCornerRadiusShape: Shape {
    
    var radii: CGFloat
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radii, height: radii)).cgPath
        
        return Path(path)
    }
}
