//
//  CustomCurvesTopBar.swift
//  SwiftUIComplexUI
//
//  Created by Amirreza Zarepour on 3/29/22.
//

import SwiftUI

struct CustomCurvesTopBar: View {
    var body: some View {
        HStack{
            
            Button(action: {}){
                Image(systemName: "circle.grid.2x2")
                    .font(.title)
                    .foregroundColor(.white)
            }
            
            
            Spacer()
            
            
            Button(action: {}){
                CustomCurveProfile()
                    
            }
            
        }
        
        .padding(.horizontal)
        .padding(.top, Screen.Edge.topSafeArea + 5)
        .padding(.bottom, 80)
        .background(Color("CustomCurveAccent"))
        
    }
}

struct CustomCurvesTopBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomCurvesTopBar()
    }
}
