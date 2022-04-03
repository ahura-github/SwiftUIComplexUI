//
//  StyleGuide.swift
//  SwiftUIComplexUI
//
//  Created by Amirreza Zarepour on 3/18/22.
//

import Foundation
import struct SwiftUI.Color

enum StyleGuide{
    
    enum Colors{
        enum AppleWatchStore: AppColor{
            case orange = "OrangeAppleWatchStore"
            case brown  = "BrownAppleWatchStore"
            
            
            func paint() -> Color{
                self.rawValue.associatedColor
            }
        }
        
        enum GameUI: AppColor{
            case color  = "GameUIColor"
            case color1 = "GameUIColor1"
            case color2 = "GameUIColor2"
            case color3 = "GameUIColor3"
            case color4 = "GameUIColor4"
        }
        
        
        enum NutritionValue: AppColor {
            case blue   = "NutritionValueBlue"
            case purple = "NutritionValuePurple"
            case yellow = "NutritionValueYellow"
        }
    }
    
    
}
