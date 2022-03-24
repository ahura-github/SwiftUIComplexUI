//
//  AddButton.swift
//  LampProduct
//
//  Created by Amirreza Zarepour on 7/12/21.
//
//MARK: - Import
import SwiftUI

struct MelodiLampAddButton: View {
    
    //MARK: - Var
    @Binding var color: Color
    
    //MARK: - MainBody
    var body: some View {
        Button(action: {}){
            Text("Add to Cart")
                .foregroundColor(.black)
                .padding(.vertical, 20)
                .padding(.horizontal, 35)
        }.background(self.color == .yellow ? Color.yellow : Color.orange)
            .clipShape(CustomCornerRadiusShape(radii: 55, corners: .topLeft))
    }
}

struct AddButton_Previews: PreviewProvider {
    static var previews: some View {
        MelodiLampAddButton(color: .constant(.yellow))
    }
}
