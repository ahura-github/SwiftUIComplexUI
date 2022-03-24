//
//  AppleWatchStoreDetailView.swift
//  SwiftUIComplexUI
//
//  Created by Amirreza Zarepour on 3/19/22.
//

import SwiftUI

struct AppleWatchStoreDetailView: View {
    
    //MARK: - Var
    @Binding var detailData: Watch
    @Binding var showDetail: Bool
    
    //MARK: - MainBody
    var body: some View {
        ZStack{
            background
        
            VStack(spacing: 20){
                AppleWatchStoreTopBar(dark: true)

               AppleWatchStoreSearhView()
                    .frame(width: Screen.Size.width - 30, height: 30)
                    .padding()
               Spacer()
                
                AppleWatchGeneralInfo(title: detailData.title)
                
                wathDetail
                
                AppleWatchStoreDetailBottomBar(showDetailView: $showDetail)
            }
            
            .navigationBarHidden(true)
        }
        .navigationBarHidden(true)
    }
}

struct AppleWatchStoreDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AppleWatchStoreDetailView(detailData: .constant(AppleWatchStoreData.instance.watches[0]), showDetail: .constant(true))
    }
}

extension AppleWatchStoreDetailView{
    //MARK: - View
    private var background: some View {
        Color.appleWatchStoreColor.brown.rawValue.associatedColor
            .edgesIgnoringSafeArea(.all)
    }
    private var watchImage: some View {
        Image(detailData.image)
            .resizable()
            .frame(width: Screen.Size.width / 2,
                   height: Screen.Size.height / 2.5)
                .rotationEffect(.init(degrees: 10))
    }
    private var watchInfo:  some View {
        VStack(alignment: .leading, spacing: 12) {
            
            Text("Color")
                .foregroundColor(Color.white.opacity(0.6))
            
            Text(detailData.color)
                .fontWeight(.bold)
                .font(.title)
                .foregroundColor(.white)
            
            Text("Price")
                .foregroundColor(Color.white.opacity(0.6))
                .padding(.top)
            
            Text(detailData.price)
                .fontWeight(.bold)
                .font(.title)
                .foregroundColor(.white)
        }
        .offset(y: -50)
    }
    private var wathDetail: some View {
        
        HStack{
            
            watchInfo
            
            Spacer(minLength: 0)
            
            watchImage
        }
        .padding(.horizontal)
        .padding(.bottom, -60)
        .zIndex(5)
        
    }
    
}
