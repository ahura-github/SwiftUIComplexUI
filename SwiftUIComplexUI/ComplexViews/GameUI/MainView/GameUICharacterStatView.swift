//
//  CharacterStatView.swift
//  GamUI
//
//  Created by Amirreza Zarepour on 1/1/22.
//

import SwiftUI

struct GameUICharacterStatView: View {
    
    //MARK: - Var
    var character: GameUICharacter
    
    
    //MARK: - View
    private var powerStatus:    some View {
        Image(systemName: "bolt.fill")
            .foregroundColor(.white)
            .padding()
            .background(
                StatBCView(index: 0, character: character)
            )
            .clipShape(Circle())
    }
    private var healthStatus:   some View {
        Image(systemName: "suit.heart.fill")
            .foregroundColor(.white)
            .padding()
            .background(
        
                StatBCView(index: 1, character: character)
            )
            .clipShape(Circle())
    }
    private var buildingStatus: some View {
        Image(systemName: "hammer.fill")
            .foregroundColor(.white)
            .padding()
            .background(
        
                StatBCView(index: 2, character: character)
            )
            .clipShape(Circle())
    }
    private var detailViewnavLink: some View {
        NavigationLink(destination: GameUIDetailView(character: self.character)) {
            
            Text("See Details")
                .font(.caption)
                .foregroundColor(.white)
                .padding(.vertical, 10)
                .padding(.horizontal, 25)
                .background(Capsule().stroke(Color.white, lineWidth: 2))
            
        }
        .offset(y: -30)
    }
    
    //MARK: - MainBody
    var body: some View {
        VStack(spacing: 20){
            Spacer(minLength: 0)
            powerStatus
            healthStatus
            buildingStatus
            Spacer(minLength: 0)
            detailViewnavLink
        }.padding(.trailing)
    }
}

struct GameUICharacterStatView_Previews: PreviewProvider {
    static var previews: some View {
        GameUICharacterStatView(character: GameUIData.instance.characters[0])
    }
}

struct StatBCView: View {
    
    var index: Int
    var character: GameUICharacter
    
    var body: some View{
        ZStack{
            
            character.color
            
            Circle()
                .stroke(Color.black.opacity(0.1), lineWidth: 5)
            
            Circle()
                .trim(from: 0, to: self.character.powers[index])
                .stroke(Color.white, lineWidth: 5)
         }
        .rotationEffect(.init(degrees: -90))
    }
}
