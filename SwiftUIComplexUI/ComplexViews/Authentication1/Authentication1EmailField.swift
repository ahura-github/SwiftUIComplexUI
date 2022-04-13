//
//  Authentication1EmailField.swift
//  SwiftUIComplexUI
//
//  Created by Amirreza Zarepour on 4/13/22.
//

import SwiftUI

struct Authentication1EmailField: View {
    
    @State var email = ""
    
    var body: some View {
        VStack{
            
            HStack(spacing: 15){
                
                Image(systemName: "envelope.fill")
                .foregroundColor(Color("Authentication1Color1"))
                
                TextField("Email Address", text: self.$email)
            }
            
            Divider().background(Color.white.opacity(0.5))
        }
        .padding(.horizontal)
        .padding(.top, 40)
    }
}

struct Authentication1EmailField_Previews: PreviewProvider {
    static var previews: some View {
        Authentication1EmailField()
    }
}
