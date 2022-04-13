//
//  Auhentication1SignUpView.swift
//  SwiftUIComplexUI
//
//  Created by Amirreza Zarepour on 4/13/22.
//

import SwiftUI

struct Auhentication1SignUpView : View {
    
    @State var email = ""
    @State var pass = ""
    @State var Repass = ""
    @Binding var index : Int
    
    var body: some View{
        
        ZStack(alignment: .bottom) {
            
            VStack{
                
               signupTopTitle
                
                Authentication1EmailField()
                
                Authentication1PasswordField()
                
                Authentication1PasswordField()
            }
            .padding()
            .padding(.bottom, 65)
            .background(Color("Authentication1Color2"))
            .clipShape(Authentication1LeftSideCurve())
            .contentShape(Authentication1LeftSideCurve())
            .shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: -5)
            .onTapGesture {
            
                self.index = 1
                    
            }
            .cornerRadius(35)
            .padding(.horizontal,20)
            
            signUpButton
        }
    }
}

struct Auhentication1SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        Auhentication1SignUpView(index: .constant(1))
    }
}

extension Auhentication1SignUpView {
    private var signupTopTitle: some View {
        HStack{
            
            Spacer(minLength: 0)
            
            VStack(spacing: 10){
                
                Text("SignUp")
                    .foregroundColor(self.index == 1 ? .white : .gray)
                    .font(.title)
                    .fontWeight(.bold)
                
                Capsule()
                    .fill(self.index == 1 ? Color.blue : Color.clear)
                    .frame(width: 100, height: 5)
            }
        }
        .padding(.top, 30)
    }
    private var signUpButton:   some View {
        Button(action: {
            
        }) {
            
            Text("SIGNUP")
                .foregroundColor(.white)
                .fontWeight(.bold)
                .padding(.vertical)
                .padding(.horizontal, 50)
                .background(Color("Authentication1Color1"))
                .clipShape(Capsule())
                // shadow...
                .shadow(color: Color.white.opacity(0.1), radius: 5, x: 0, y: 5)
        }
        .offset(y: 25)
        .opacity(self.index == 1 ? 1 : 0)
    }
    
}
