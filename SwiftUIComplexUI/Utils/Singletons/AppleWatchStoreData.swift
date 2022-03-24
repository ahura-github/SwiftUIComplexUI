//
//  AppleWatchStoreData.swift
//  SwiftUIComplexUI
//
//  Created by Amirreza Zarepour on 3/18/22.
//

import Foundation

final class AppleWatchStoreData{
    
    static let instance = AppleWatchStoreData()
    
    private init(){}
    
    
    let menu = ["ALL","CLASSIC","GRAND","FORMAL","ORIGINAL","TREND"]
    
    
    let watches = [

        Watch(id: 0, color: "Dark Black", price: "$500", image: "blackAppleWatch",title: "Classic Black"),
        Watch(id: 1, color: "Light Yellow", price: "$450", image: "yellowAppleWatch",title: "Classic Yellow"),
        Watch(id: 2, color: "Rose Gold", price: "$510", image: "goldAppleWatch",title: "Classic Gold"),
        Watch(id: 3, color: "Red", price: "$500", image: "redAppleWatch",title: "Classic Red"),
        Watch(id: 4, color: "White", price: "$400", image: "whiteAppleWatch",title: "Classic White"),
    ]
}
