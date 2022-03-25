//
//  PlayerCarView.swift
//  GamUI
//
//  Created by Amirreza Zarepour on 1/1/22.
//

import SwiftUI

struct GameUICharacterCarView: View {
    
    //MARK: - Var
    var character : GameUICharacter
    
    //MARK: - View
    private var characterImage: some View {
        Image(self.character.image)
        .resizable()
        .frame(width: Screen.Size.width / 1.8)

    }
    
    
    //MARK: - MainBody
    var body: some View{
        
        HStack{
            
            characterImage
            
            Spacer()
            
           GameUICharacterStatView(character: character)
        }
        .frame(height: 290)
        .background(
        
            Color.white.opacity(0.2)
            .cornerRadius(25)
            // going to rate view in 3d angle...
            .rotation3DEffect(.init(degrees: 20), axis: (x: 0, y: -1, z: 0))
            // going to trim view..
            .padding(.vertical, 35)
            .padding(.trailing, 25)
            
        )
        .padding(.horizontal)
    }
}

struct GameUICharacterCarView_Previews: PreviewProvider {
    static var previews: some View {
        GameUICharacterCarView(character: GameUIData.instance.characters[0])
    }
}
