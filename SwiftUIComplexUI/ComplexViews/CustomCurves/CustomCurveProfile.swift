//
//  CustomCurveProfile.swift
//  SwiftUIComplexUI
//
//  Created by Amirreza Zarepour on 3/29/22.
//

import SwiftUI

struct CustomCurveProfile: View {
    var body: some View {
        
        ZStack(alignment: .bottom){
        
            RoundedRectangle(cornerRadius: 15)
                .foregroundColor(.white)
                .frame(size: 45)
            
            Image("CustomCurveswoman")
                .renderingMode(.original)
                .resizable()
                .frame(size: 40)
                .foregroundColor(.white)
            
        }
        
    }
}

struct CustomCurveProfile_Previews: PreviewProvider {
    static var previews: some View {
        CustomCurveProfile()
    }
}
