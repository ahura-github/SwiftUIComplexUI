//
//  View.swift
//  SwiftUIComplexUI
//
//  Created by Amirreza Zarepour on 3/18/22.
//

import SwiftUI

extension View{
    
    public func frame(size: CGFloat, alignment: Alignment = .center) -> some View{
        modifier(FrameViewModifier(size: size, alignment: alignment))
    }
    
    public func frame(width: CGFloat, height: CGFloat) -> some View{
        self.frame(width: width, height: height, alignment: .center)
    }
    
    public func frame(_ frame: CGRect) -> some View{
        self.frame(width: frame.width, height: frame.height)
    }
    
    public func cornerRadius(corners: UIRectCorner = .allCorners, radii: CGFloat) -> some View{
        self
            .clipShape(CustomCornerRadiusShape(radii: radii, corners: corners))
    }
}
