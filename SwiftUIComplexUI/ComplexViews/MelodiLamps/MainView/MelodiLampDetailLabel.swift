//
//  DetailLabel.swift
//  LampProduct
//
//  Created by Amirreza Zarepour on 7/12/21.
//
//MARK: - Import
import SwiftUI

struct MelodiLampDetailLabel: View {
    
    //MARK: - Var
    var image:       String
    var description: String
    
    //MARK: - MainBody
    var body: some View {
        Button(action: {
            
        }) {
            VStack{
                
                Image(image)
                    .renderingMode(.original)
                
                Text("\(description)")
                    .fontWeight(.bold)
                    .foregroundColor(.black)
            }
            .padding()
        }
        .background(Color.black.opacity(0.06))
        .cornerRadius(12)
    }
}

struct DetailLabel_Previews: PreviewProvider {
    static var previews: some View {
        MelodiLampDetailLabel(image: "mat1", description: "1.6 CM")
    }
}
