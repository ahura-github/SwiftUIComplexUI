//
//  MainView.swift
//  GamUI
//
//  Created by Amirreza Zarepour on 1/1/22.
//

import SwiftUI

struct GameUIMainView: View {
    
    //MARK: - View
    private var backgroundColor:       some View {
        LinearGradient(gradient: .init(colors: [StyleGuide.Colors.GameUI.color.rawValue.associatedColor,StyleGuide.Colors.GameUI.color1.rawValue.associatedColor]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
    }
    private var charactersScrollView : some View {
        ScrollView(.vertical, showsIndicators: false) {
            
            VStack(spacing: 10){
                
                ForEach(GameUIData.instance.characters){character in
                    
                    GameUICharacterCarView(character: character)
                }
            }
            .padding(.bottom)
        }
    }
    
    var body: some View {

            VStack {
                GameUIMainViewTopBar()
                   
                charactersScrollView
                    
               Spacer()
            }.navigationBarTitle("",displayMode: .inline)
                .navigationBarHidden(true)
                .navigationBarBackButtonHidden(true)
                .background(
                    backgroundColor
                )
                .edgesIgnoringSafeArea(.bottom)
        
       
    }
}

struct GameUIMainView_Previews: PreviewProvider {
    static var previews: some View {
        GameUIMainView()
    }
}
