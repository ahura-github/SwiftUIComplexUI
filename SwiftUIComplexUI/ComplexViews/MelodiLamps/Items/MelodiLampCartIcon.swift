//
//  CartIcon.swift
//  LampProduct
//
//  Created by Amirreza Zarepour on 7/12/21.
//
//MARK: - Import
import SwiftUI

struct MelodiLampCartIcon: View {
    
    //MARK: - Var
    let deviceIsCompact = Screen.Size.height > 800
    
    //MARK: - MainBody
    var body: some View {
        Button(action:{}){
            Image(Assets.MelodiLamps.cart.rawValue)
                .renderingMode(.original)
                .padding()
        }
        .padding(.horizontal, 10)
        .padding(.vertical, deviceIsCompact ? 15 : 10)
        .background(Color.white)
        .clipShape(CustomCornerRadiusShape(radii: deviceIsCompact ? 35.0 : 30.0, corners: .bottomLeft))
        
    }
}

struct MelodiLampCartIcon_Previews: PreviewProvider {
    static var previews: some View {
        MelodiLampCartIcon()
            .background(Color.yellow)
    }
}
