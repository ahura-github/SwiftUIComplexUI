//
//  TravelAppData.swift
//  SwiftUIComplexUI
//
//  Created by Amirreza Zarepour on 3/28/22.
//

import Foundation

final class TravelAppData{
    
    static let instance = TravelAppData()
    
    private init(){}
    
    let places = [
        TravelAppPlace(name: "Fenghuang", country: "China", description: "Situated in the Western Hunan Province, the small town of Fenghuang is comparatively difficult to reach. Road conditions and traffic can be hard to negotiate, so getting a bus may be the best option. Once you’re there you’ll want to explore the area by foot.", image: "Fenghuang"),
        TravelAppPlace(name: "Huangshan", country: "China", description: "This beautiful mountain range is known for its hot springs, dense pine forests, and mystical aura. It sits majestically with a misty sea of cloud at its feet but each season gives the mountains a different flavor. In springtime, it is scattered with pretty pink blossoms, bright flowers that illuminate the valleys and fill the air with their heady scent.", image: "HuangshanChina"),
        TravelAppPlace(name: " Yuanyang Rice Terraces", country: "China", description: "The southern Ailao Mountains house these rice terraces, and the fields take up nearly 31,000 acres. At 6500 feet above sea level, the view is astounding. The Hani people have farmed these lands for centuries.", image: "YuanyangRiceTerraces"),
        TravelAppPlace(name: "Yangtze River", country: "China", description: "The longest river in Asia holds great historical, economic, and cultural importance to the country. It accommodates the controversial Three Gorges Dam which is the largest hydro-electric power station in the world.", image: "YangtzeRiver"),
        TravelAppPlace(name: "Jiuzhaigou Valley", country: "China", description: "This place with its waterfalls, lake groups and abundance of endangered flora and fauna isn’t short on natural beauty either.", image: "JiuzhaigouValleyChina")
    ]
}
