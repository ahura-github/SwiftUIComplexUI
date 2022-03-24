//
//  AppleWatchStoreDetailBottomBar.swift
//  SwiftUIComplexUI
//
//  Created by Amirreza Zarepour on 3/20/22.
//

import SwiftUI

struct AppleWatchStoreDetailBottomBar: View {
    
    //MARK: - Var
    @State   var index = 0
    @Binding var showDetailView: Bool
        
    //MARK: - MainBody
    var body: some View {
        ZStack(alignment: .topLeading){
            
            VStack{
                ScrollView(UIScreen.main.bounds.height < 750 ? .vertical : .init(), showsIndicators: false) {
                    
                    VStack{
                        
                       infoButtons

                        
                        if self.index == 0{
                            
                            detailedInfo
                        }
                        else{
                            
                         moreInfoText
                        }

                        
                    }
                    .padding(.horizontal, 25)
                }
                .padding(.top, 50)
                
                buttomButtons
            }
            .background(Color.white.edgesIgnoringSafeArea(.all))
            // .clipShape(CustomCornerRadiusShape(radii: 20, corners: [.topLeft, .topRight]))
            
            plusButton
        }
       
    }
}

struct AppleWatchStoreDetailBottomBar_Previews: PreviewProvider {
    static var previews: some View {
        AppleWatchStoreDetailBottomBar(showDetailView: .constant(true))
    }
}

extension AppleWatchStoreDetailBottomBar{
    //MARK: - View
    private var purchaseButton: some View {
        Button(action: {
            
        }) {
            
            Text("Add to Cart")
                .foregroundColor(.white)
                .padding(.vertical)
                .frame(width: UIScreen.main.bounds.width / 1.5)
                .background(Color.appleWatchStoreColor.orange.rawValue.associatedColor)
                .cornerRadius(10)
            
        }
        .shadow(radius: 5)
    }
    private var closeButton:    some View {
        Button(action: {
            showDetailView.toggle()
        }) {
            
            Image(systemName: "xmark")
                .font(.title)
                .foregroundColor(Color.black.opacity(0.8))
                .padding(.horizontal)
        }
    }
    private var plusButton:     some View {
        Button(action: {
            
        }) {
            
            Image(systemName: "plus")
            .resizable()
            .frame(width: 30, height: 30)
            .foregroundColor(.white)
            .padding()
            .background(Color.appleWatchStoreColor.orange.rawValue.associatedColor)
            .clipShape(Circle())
        }
        .padding(.leading, 50)
        .offset(y: -35)
    }
    private var buttomButtons:  some View {
        HStack{
            
           purchaseButton
            
            Spacer(minLength: 0)
            
            closeButton
        }
        .padding(.top,10)
        .padding(.horizontal, 25)
        //.padding(.bottom, Screen.Edge.bottomSafeArea == 0 ? 15 : Screen.Edge.bottomSafeArea)
    }
    private var detailButton:   some View {
        Button(action: {
            
            self.index = 0
            
        }) {
            
            Text("Details")
                .foregroundColor(self.index == 0 ? .white : Color.black.opacity(0.6))
                .padding(.vertical, 10)
                .padding(.horizontal, 25)
                .background(self.index == 0 ? Color.appleWatchStoreColor.orange.rawValue.associatedColor : Color.clear)
                .cornerRadius(8)
        }

    }
    private var descriptionButton: some View {
        Button(action: {
            
            self.index = 1
            
        }) {
            
            Text("Description")
                .foregroundColor(self.index == 1 ? .white : Color.black.opacity(0.6))
                .padding(.vertical, 10)
                .padding(.horizontal, 25)
                .background(self.index == 1 ? Color.appleWatchStoreColor.orange.rawValue.associatedColor : Color.clear)
                .cornerRadius(8)
        }
    }
    private var infoButtons:       some View {
        HStack(spacing: 0){
            
            detailButton
            descriptionButton
            
            Spacer()
        }
    }
    private var detailedInfo:      some View {
        HStack(spacing: 20){
            
            VStack(spacing: 12){
                
                Text("15mm")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black.opacity(0.8))
                
                Text("Strip Width")
                    .foregroundColor(Color.black.opacity(0.4))
            }
            
            VStack(spacing: 12){
                
                Text("Leather")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black.opacity(0.8))
                
                Text("Strip material")
                    .foregroundColor(Color.black.opacity(0.4))
            }
            
            VStack(spacing: 12){
                
                Text("50mm")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black.opacity(0.8))
                
                Text("Water resist")
                    .foregroundColor(Color.black.opacity(0.4))
            }
        }
        .padding(.top)
    }
    private var moreInfoText:      some View {
        Text("The Apple Watch Series 5 features a new always-on display, built-in compass for advanced navigation features, and a titanium case option.")
            .foregroundColor(.black)
            .padding(.top)
    }
}
