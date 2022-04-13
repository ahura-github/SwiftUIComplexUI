//
//  Authentication1PasswordField.swift
//  SwiftUIComplexUI
//
//  Created by Amirreza Zarepour on 4/13/22.
//

import SwiftUI

struct Authentication1PasswordField: View {
    
    @State var pass = ""
    
    var body: some View {
        VStack{
            
            HStack(spacing: 15){
                
                Image(systemName: "eye.slash.fill")
                .foregroundColor(Color("Authentication1Color1"))
                
                SecureField("Password", text: self.$pass)
            }
            
            Divider().background(Color.white.opacity(0.5))
        }
        .padding(.horizontal)
        .padding(.top, 30)
    }
}

struct Authentication1PasswordField_Previews: PreviewProvider {
    static var previews: some View {
        Authentication1PasswordField()
    }
}
