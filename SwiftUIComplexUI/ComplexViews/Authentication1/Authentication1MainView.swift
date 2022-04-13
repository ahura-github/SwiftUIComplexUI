//
//  Authentication1MainView.swift
//  SwiftUIComplexUI
//
//  Created by Amirreza Zarepour on 4/12/22.
//

import SwiftUI

struct Authentication1MainView: View {
    
    @State var index = 0
    
    var body: some View {
        GeometryReader{_ in
            
            VStack{
                
                logo
                
                ZStack{
                    
                    Auhentication1SignUpView(index: self.$index)
                        // changing view order...
                        .zIndex(Double(self.index))
                    
                    Authentication1LoginView(index: self.$index)
                }
                
                bottomDivider
                
                bottomButtons
            }
            .padding(.vertical)
            .navigationBarHidden(true)
        }
        .background(Color("Authentication1Color").edgesIgnoringSafeArea(.all))
        .preferredColorScheme(.dark)
            
    }
}

struct Authentication1MainView_Previews: PreviewProvider {
    static var previews: some View {
        Authentication1MainView()
    }
}

extension Authentication1MainView {
    private var appleButton:    some View {
        Button(action: {
            
        }) {
            
            Image("appleLogo")
            .resizable()
            .renderingMode(.original)
            .frame(width: 50, height: 50)
            .clipShape(Circle())
        }
    }
    private var twitterButton:  some View {
        Button(action: {
            
        }) {
            
            Image("twitterLogo")
            .resizable()
            .renderingMode(.original)
            .frame(width: 50, height: 50)
            .clipShape(Circle())
        }
    }
    private var facebookButton: some View {
        Button(action: {
            
        }) {
            
            Image("facebookLogo")
            .resizable()
            .renderingMode(.original)
            .frame(width: 50, height: 50)
            .clipShape(Circle())
        }
    }
    private var bottomButtons:  some View {
        HStack(spacing: 25){
            
            appleButton
            
           facebookButton
            
           twitterButton
        }
        .padding(.top, 30)
    }
    private var bottomDivider:  some View {
        HStack(spacing: 15){
            
            Rectangle()
            .fill(Color("Authentication1Color1"))
            .frame(height: 1)
            
            Text("OR")
            
            Rectangle()
            .fill(Color("Authentication1Color1"))
            .frame(height: 1)
        }
        .padding(.horizontal, 30)
        .padding(.top, 50)
        // because login button is moved 25 in y axis and 25 padding = 50
    }
    private var logo:           some View {
        Image("Authentication1logo")
        .resizable()
        .frame(width: 60, height: 60)
    }
    
}
