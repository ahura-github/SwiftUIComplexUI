//
//  NutritionValueData.swift
//  SwiftUIComplexUI
//
//  Created by Amirreza Zarepour on 3/25/22.
//

import Foundation

final class NutritionValueData{
    static let instance = NutritionValueData()
    
    private init(){}
    
    let fruites = [

        NutritionValueFruite(name: "Breaking Banana", price: "$5/Dozen", content: "Bananas are high in potassium and contain goog levels of protien and dietary fiber.One medium-sized banana contains 422 milligrams of potassium.", calories: "89", expand: ["0.3 g","23 g","1.1 g"],color: StyleGuide.Colors.NutritionValue.yellow.rawValue.associatedColor,image: "NutritionValueban"),

        NutritionValueFruite(name: "Amazing Avacado", price: "$25/Kg", content: "Avocodo contributes nearly 20 vitamins and minerals,making it a great nutrient-dense food choice.It also contains heart-healthy monounsaturated fat - good dat! ", calories: "160", expand: ["15 g","9 g","2 g"],color: StyleGuide.Colors.NutritionValue.blue.rawValue.associatedColor,image: "NutritionValueava"),
        
        NutritionValueFruite(name: "Seductive Strawberry", price: "$100/Kg", content: "They're an excellent source of vitamin C and manganese and also contain decent amounts of folate(vitamin B9) and potassium.", calories: "33", expand: ["0.3 g","8 g","0.7 g"],color: StyleGuide.Colors.NutritionValue.purple.rawValue.associatedColor, image: "NutritionValuesta")

    ]
}
