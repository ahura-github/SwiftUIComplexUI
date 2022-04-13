//
//  PS4ControllerMainView.swift
//  SwiftUIComplexUI
//
//  Created by Amirreza Zarepour on 4/1/22.
//

import Foundation
import SwiftUI

struct PS4ControllerMainView: View {
    var body: some View{
        VStack{
          
            topSection
        
            detailText
            
            details
            
            Spacer(minLength: 0)
            
            bottomButton
            
            //.padding(.vertical)
            
            .navigationBarHidden(true)
        }
        .background(background)
        .edgesIgnoringSafeArea(.top)
    }
}

struct PS4ControllerMainView_Previews: PreviewProvider {
    static var previews: some View {
        PS4ControllerMainView()
    }
}


//bookmark.fill
extension PS4ControllerMainView{
    private var background:     some View {
        Color("PS4ControllerColor3").edgesIgnoringSafeArea(.all)
    }
    private var topBackgroun:   some View {
        LinearGradient(gradient: .init(colors: [Color("PS4ControllerColor2"), Color("PS4ControllerColor1")]), startPoint: .topLeading, endPoint: .bottomTrailing)
    }
    private var topBar:         some View {
        HStack{
            Button(action: {}){
                Image(systemName: "arrow.backward")
                    .renderingMode(.original)
                    .foregroundColor(.white)
            }
            
            Spacer(minLength: 0)
            
            Button(action: {}){
                Image(systemName: "cart")
                    .renderingMode(.original)
                    .foregroundColor(.gray)
                    .padding()
                    .background(Color("PS4ControllerColor3" ))
                    .clipShape(Circle())
            }
        }

    }
    private var info:           some View {
        HStack(alignment: .top, spacing: 0){
            VStack(alignment: .leading, spacing: 12){
                Text("PLATFORM")
                    .fontWeight(.bold)
                
                Text("PS5")
                
                ///--------------
                Text("RELEASE")
                    .fontWeight(.bold)
                    .padding(.top, 10)
                
                Text("JUNE 11")
                
                ///--------------
                Text("PRICE ")
                    .fontWeight(.bold)
                    .padding(.top, 10)
                
                Text("$500")
            }
            .foregroundColor(.white)
            .offset(y: -15)
            
            Spacer(minLength: 0)
            
            Image("ps5Controller1")
                .resizable()
                .scaledToFit()
                .rotationEffect(Angle(degrees: -90))
                .padding(.horizontal, -70)
                .offset(x: 55)
                
            
        }
        .padding(.top, 35)
       
    }
    private var bookmarkButton: some View {
        Button(action: {}){
            Image(systemName: "bookmark")
                .foregroundColor(.gray)
                .padding(18)
                .background(Color("PS4ControllerColor3"))
                .clipShape(Circle())
        }
        .padding(.leading)
        .offset(y: 30)
        .shadow(color: Color.black.opacity(0.9), radius: 5, x: 5, y: 5)
    }
    private var topSection:     some View {
        ZStack(alignment: .bottomLeading) {
            ZStack(alignment: .topTrailing){
                
            VStack {
                topBar
                
               
                info
                
            
            }
            .padding(.horizontal)
            .padding(.top, Screen.Edge.topSafeArea + 10)
            ///Decreasing height
            .padding(.bottom, -30)
            .background(topBackgroun)
                
                
        }
            bookmarkButton
            
            
        }
    }
    private var detailText:     some View {
        HStack{
            
            VStack(alignment: .leading, spacing: 12){

                Text("Dual Sense")
                    .fontWeight(.bold)
                    .font(.system(size: 35))
                    
                
                
                Text("DualSense also adds a built-in microphone array, which will enable players to easily chat friends without a headset.")
                    
                
            }
            .foregroundColor(.white.opacity(0.7))
            
            
            Spacer(minLength: 0)

        }
        .padding(.horizontal, 20)
        .padding(.top, 30)
    }
    private var details:        some View {
        VStack{
            HStack(spacing: 0){
                ///---------------
                HStack(spacing: 15){
                    Image("controller")
                        .resizable()
                        .scaledToFit()
                        .frame(size: 25)
                        .frame(width: 60, height: 60)
                        .background(Color("PS4ControllerColor3"))
                        .cornerRadius(10)
                        .shadow(color: .white.opacity(0.05), radius: 5, x: -5, y: -5)
                        .shadow(color: .black.opacity(0.9), radius: 5, x: 5, y: 5)
                    
                    VStack(alignment: .leading){
                        Text("Furistic")
                            .foregroundColor(.white)
                        
                        Text("Design")
                            .foregroundColor(.gray)
                    }
                    
                }
                
                Spacer(minLength: 0)
                ///---------------
                HStack(spacing: 15){
                    Image("microphone")
                        .renderingMode(.template)
                        
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(Color("PS4ControllerColor5"))
                        .frame(size: 30)
                        .frame(size: 60)
                        .background(Color("PS4ControllerColor3"))
                        .cornerRadius(10)
                        .shadow(color: .white.opacity(0.05), radius: 5, x: -5, y: -5)
                        .shadow(color: .black.opacity(0.9), radius: 5, x: 5, y: 5)
                    
                    VStack(alignment: .leading){
                        Text("Built-in")
                            .foregroundColor(.white)
                        
                        Text("Microphone")
                            .foregroundColor(.gray)
                    }
                    
                }
            }
            .padding(.horizontal, 20)
            .padding(.vertical)
            
            HStack(spacing: 0){
                ///---------------
                HStack(spacing: 15){
                    Image("controllerArrow")
                        .resizable()
                        .scaledToFit()
                        .frame(size: 20)
                        .frame(width: 60, height: 60)
                        .background(Color("PS4ControllerColor3"))
                        .cornerRadius(10)
                        .shadow(color: .white.opacity(0.05), radius: 5, x: -5, y: -5)
                        .shadow(color: .black.opacity(0.9), radius: 5, x: 5, y: 5)
                    
                    VStack(alignment: .leading){
                        Text("Hoptic")
                            .foregroundColor(.white)
                        
                        Text("Feedback")
                            .foregroundColor(.gray)
                    }
                    
                }
                
                Spacer(minLength: 0)
                ///---------------
                HStack(spacing: 15){
                    Image(systemName: "bolt.circle.fill")
                        .renderingMode(.template)
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                        .foregroundColor(Color("PS4ControllerColor4"))
                        .frame(size: 20)
                        .frame(size: 60)
                        .background(Color("PS4ControllerColor3"))
                        .cornerRadius(10)
                        .shadow(color: .white.opacity(0.05), radius: 5, x: -5, y: -5)
                        .shadow(color: .black.opacity(0.9), radius: 5, x: 5, y: 5)
                    
                    VStack(alignment: .leading){
                        Text("Fast Charge")
                            .foregroundColor(.white)
                        
                        Text("USB-C Port")
                            .foregroundColor(.gray)
                    }
                    
                }
            }
            .padding(.horizontal, 20)
        }
    }
    private var bottomButton:   some View {
        HStack{
            Text("$")
                .foregroundColor(Color("PS4ControllerColor2"))
            
            Text("500")
                .fontWeight(.bold)
                .font(.title)
                .foregroundColor(.white)
            
            
            Button(action: {}) {
                HStack{
                    Text("Preorder")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    Image("back")
                        .foregroundColor(.white)
                        .rotationEffect(Angle(degrees: 180))
                        .padding(.leading, 20)
                }
            }
            .padding(.vertical, 10)
            .padding(.horizontal)
            .background(
            
                LinearGradient(
                    gradient: .init(
                        colors: [Color("PS4ControllerColor1"),
                    Color("PS4ControllerColor2")]),
                    startPoint: .topLeading, endPoint: .bottomTrailing)
                    .cornerRadius(10)
            )
            .padding(.leading, 35)
            
        }
        
        
        .padding(.vertical)
        .padding(.horizontal, 25)
        .background(Color("PS4ControllerColor3"))
        .cornerRadius(15)
        .shadow(color: .white.opacity(0.05), radius: 5, x: -5, y: -5)
        .shadow(color: .black.opacity(0.9), radius: 5, x: 5, y: 5)

    }
}
