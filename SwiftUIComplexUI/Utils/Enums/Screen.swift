//
//  Device.swift
//  SwiftUIComplexUI
//
//  Created by Amirreza Zarepour on 3/18/22.
//

import SwiftUI

enum Screen{
    
    enum Size{
        static let width  =  UIScreen.main.bounds.width
        static let height =  UIScreen.main.bounds.height
    }
    
    enum Edge{
        static let bottomSafeArea = ((UIApplication.shared.connectedScenes.first as? UIWindowScene)?.windows.first?.safeAreaInsets.bottom)!
    }
}
