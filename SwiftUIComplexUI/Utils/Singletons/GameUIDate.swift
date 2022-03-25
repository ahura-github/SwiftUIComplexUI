//
//  GameUIDate.swift
//  SwiftUIComplexUI
//
//  Created by Amirreza Zarepour on 3/25/22.
//

import Foundation

final class GameUIData{
    
    static let instance = GameUIData()
    
    private init() {
        
    }
    
    
    let characters = [
        GameUICharacter(id: 0, powers: [0.2,0.5,0.9], image: "GameUIPlayer1", name: "Bomb Raider",
                        color: StyleGuide.Colors.GameUI.color.rawValue.associatedColor),
        GameUICharacter(id: 2, powers: [0.3,0.5,0.6], image: "GameUIPlayer2", name: "Pekka",
                        color: StyleGuide.Colors.GameUI.color1.rawValue.associatedColor),
        GameUICharacter(id: 1, powers: [0.5,0.4,0.8], image: "GameUIPlayer3", name: "Barberian",
                        color: StyleGuide.Colors.GameUI.color1.rawValue.associatedColor),
    ]

}
