//
//  DetailView.swift
//  GamUI
//
//  Created by Amirreza Zarepour on 1/1/22.
//

import SwiftUI

struct GameUIDetailView: View {
    
    //MARK: - Var
    var character : GameUICharacter
    
    // used to pop the top most view on stack...
    @Environment(\.presentationMode) var present
    
    //MARK: - View
    private var backgroundColor:   some View {
        LinearGradient(gradient: .init(colors: [StyleGuide.Colors.GameUI.color2.rawValue.associatedColor,StyleGuide.Colors.GameUI.color3.rawValue.associatedColor]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
    }
    private var descriptionText:   some View {
        Text("Super smash bros ultimate\ncillagers from the animal crossing series.\nThis troops fight most effictively in large group.")
            .multilineTextAlignment(.center)
            .foregroundColor(.white)
            .padding(.top)
    }
    private var characternameText: some View {
        Text(self.character.name)
            .fontWeight(.bold)
            .font(.system(size: 55))
            .foregroundColor(.white)
            .padding(.top)
    }
    private var characterImage:    some View {
        Image(self.character.image)
            .resizable()
            .frame(width: UIScreen.main.bounds.width - 30, height: UIScreen.main.bounds.height / 2)
            .background(Color.white.opacity(0.2))
            .cornerRadius(30)
    }
    private var playButton:        some View {
        Button(action: {
            
        }) {
            
            Text("Play Now")
                .foregroundColor(.white)
                .padding(.vertical)
                .frame(width: (UIScreen.main.bounds.width / 2) - 30)
                .background(StyleGuide.Colors.GameUI.color4.rawValue.associatedColor)
                .clipShape(Capsule())
        }
    }
    private var favoritButton:     some View {
        Button(action: {
            
        }) {
            
            Text("Add Favourite")
                .foregroundColor(.white)
                .padding(.vertical)
                .frame(width: (UIScreen.main.bounds.width / 2) - 30)
                .background(Capsule().stroke(Color.white, lineWidth: 2))
        }
    }
    private var overViewText:      some View {
        Text("Overview")
            .font(.title)
            .fontWeight(.bold)
            .foregroundColor(.white)
    }
    private var settingButton:     some View {
        Button(action: {
            
        }) {
            
            Image(systemName: "circle.grid.2x2.fill")
                .font(.title)
                .foregroundColor(.white)
        }

    }
    private var backButton:        some View {
        Button(action: {
            
            //pop the view when back button pressed
            
            self.present.wrappedValue.dismiss()
            
        }) {
            
            Image(systemName: "chevron.left")
                .font(.title)
                .foregroundColor(.white)
        }
    }
    
    //MARK: - MainBody
    var body: some View{
        
        VStack{
            
            ZStack{
                
                HStack{
                    
                    backButton
                    
                    Spacer()
                    
                    settingButton
                }
                
                overViewText
            }
            .padding()
            
            characterImage
            
            characternameText
            
            descriptionText
            
            HStack(spacing: 20){
                
                favoritButton
                
                playButton
            }
            .padding(.top,30)
            
            Spacer()
        }
        .background(
            backgroundColor
        )
        .navigationBarTitle("",displayMode: .inline)
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
}

struct GameUIDetailView_Previews: PreviewProvider {
    static var previews: some View {
        GameUIDetailView(character: GameUIData.instance.characters[0])
    }
}
