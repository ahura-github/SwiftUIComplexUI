//
//  PS4ControllerFastCharger.swift
//  SwiftUIComplexUI
//
//  Created by Amirreza Zarepour on 4/2/22.
//

import SwiftUI

struct PS4ControllerFastCharger: View {
    var body: some View {
        Image(systemName: "bolt.circle.fill")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .foregroundColor(Color("PS4ControllerColor4"))
           
        
    }
}

struct PS4ControllerFastCharger_Previews: PreviewProvider {
    static var previews: some View {
        PS4ControllerFastCharger()
    }
}
