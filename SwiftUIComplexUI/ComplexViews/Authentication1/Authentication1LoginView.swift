//
//  Authentication1LoginView.swift
//  SwiftUIComplexUI
//
//  Created by Amirreza Zarepour on 4/13/22.
//

import SwiftUI

struct Authentication1LoginView : View {
    //MAKR: - Vars
    @Binding var index : Int
    
    //MARK: - MainBody
    var body: some View{
        
        ZStack(alignment: .bottom) {
            
            VStack{
                
               loginTopTittle
                
                Authentication1EmailField()
                
                Authentication1PasswordField()
                
                forgetPassword
            }
            .padding()
            .padding(.bottom, 65)
            .background(Color("Authentication1Color2"))
            .clipShape(Authentication1RightSideCurve())
            .contentShape(Authentication1RightSideCurve())
            .shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: -5)
            .onTapGesture {
                self.index = 0
            }
            .cornerRadius(35)
            .padding(.horizontal,20)
            
            loginButton
        }
    }
}
struct Authentication1LoginView_Previews: PreviewProvider {
    static var previews: some View {
        Authentication1LoginView(index: .constant(1))
    }
}

extension Authentication1LoginView {
    private var loginTopTittle: some View {
        HStack{
            
            VStack(spacing: 10){
                
                Text("Login")
                    .foregroundColor(self.index == 0 ? .white : .gray)
                    .font(.title)
                    .fontWeight(.bold)
                
                Capsule()
                    .fill(self.index == 0 ? Color.blue : Color.clear)
                    .frame(width: 100, height: 5)
            }
            
            Spacer(minLength: 0)
        }
        .padding(.top, 30)// for top curve...
    }
    private var forgetPassword: some View {
        HStack{
            
            Spacer(minLength: 0)
            
            Button(action: {
                
            }) {
                
                Text("Forget Password?")
                    .foregroundColor(Color.white.opacity(0.6))
            }
        }
        .padding(.horizontal)
        .padding(.top, 30)
    }
    private var loginButton:    some View {
        Button(action: {
            
        }) {
            
            Text("LOGIN")
                .foregroundColor(.white)
                .fontWeight(.bold)
                .padding(.vertical)
                .padding(.horizontal, 50)
                .background(Color("Authentication1Color1"))
                .clipShape(Capsule())
                // shadow...
                .shadow(color: Color.white.opacity(0.1), radius: 5, x: 0, y: 5)
        }
        // moving view down..
        .offset(y: 25)
        .opacity(self.index == 0 ? 1 : 0)
    }
    
}
