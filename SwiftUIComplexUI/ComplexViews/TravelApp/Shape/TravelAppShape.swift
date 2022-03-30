//
//  TravelAppShape.swift
//  SwiftUIComplexUI
//
//  Created by Amirreza Zarepour on 3/28/22.
//

import SwiftUI

struct TravelAppShape: Shape{
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .bottomRight], cornerRadii: CGSize(width: 55, height: 55)).cgPath
        
        return Path(path)
    }
}
