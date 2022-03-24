//
//  AppleWatchStoreMainView.swift
//  SwiftUIComplexUI
//
//  Created by Amirreza Zarepour on 3/18/22.
//

import SwiftUI

struct AppleWatchStoreMainView : View {
    
    //MARK: - Var
    @Binding var detailData: Watch
    @Binding var detail: Bool
   
    
    //MARK: - MainBody
    var body: some View{
        ZStack{
            background
            
            VStack{
                
                AppleWatchStoreTopBar(dark: false)
                
                header
                
                AppleWatchStoreMenuBar()
                
                WatchScroll(detailData: $detailData, detail: $detail)
                
                AppleWatchStoreTabBar()
            }
            .navigationBarHidden(true)
        }
        .navigationBarHidden(true)
        .edgesIgnoringSafeArea(.bottom)
    }
}

extension AppleWatchStoreMainView {
    private var background:       some View {
        Color.black.opacity(0.06).edgesIgnoringSafeArea(.all)
    }
    private var header:           some View {
    HStack{
        
        ///Header Title
        VStack(alignment: .leading, spacing: 10) {
            
            Text("Welcome!")
            
            Text("Discovery")
                .font(.title)
                .fontWeight(.bold)
        }
        .foregroundColor(.black)
        
        Spacer()
        
        ///Search Button
        Button(action: {
            
        }) {
            
            Image(systemName: "magnifyingglass")
                .font(.title)
                .foregroundColor(.black)
        }
        
        
    }
    .padding()
}
}


