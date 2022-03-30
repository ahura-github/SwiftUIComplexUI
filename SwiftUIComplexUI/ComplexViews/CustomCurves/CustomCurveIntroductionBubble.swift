//
//  CustomCurveIntroductionBubble.swift
//  SwiftUIComplexUI
//
//  Created by Amirreza Zarepour on 3/30/22.
//

import SwiftUI

struct CustomCurveIntroductionBubble: View {
    var body: some View {
        HStack{
            
            VStack{
                
                ///image
                HStack{
                    
                    
                    Spacer()
                    
                    Image("CustomCurves")
                        .resizable()
                        .frame(width: 170, height: 130)
                    
                    
                }
                
                
                HStack{
                    
                    VStack(alignment: .leading, spacing: 15){
                        
                        
                        
                        Text("Welcome")
                            .font(.title)
                        
                        Text("Find your \ndream Job!")
                            .font(.system(size: 35))
                            .fontWeight(.bold)
                        
                    }
                    .foregroundColor(.black)
                    
                    
                    
                    Spacer()
                }
                .padding(.leading, 30)
                
                
                
            }
            .padding(.bottom, 35)
            .frame(width: Screen.Size.width - 100)
            .background(Color("CustomCurveSelect"))
            .clipShape(CustomCornerRadiusShape(radii: 70.0 , corners: [.topLeft, .topRight, .bottomRight]))
            
            
            Spacer()
        }
    }
}

struct CustomCurveIntroductionBubble_Previews: PreviewProvider {
    static var previews: some View {
        CustomCurveIntroductionBubble()
    }
}
