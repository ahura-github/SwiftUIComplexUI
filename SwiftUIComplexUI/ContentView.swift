//
//  ContentView.swift
//  SwiftUIComplexUI
//
//  Created by Amirreza Zarepour on 3/18/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List{
            NavigationLink("Go to Apple Watch Store") {
                AppleWatchStorePresenterView()}
            
            NavigationLink("Melodi Lamps") {
                MelodiLampMainView()}
            
            
            NavigationLink("GameUI") {
                GameUIMainView()}
            
            
            NavigationLink("Nutrition Value") {
                NutritionValueMainView()}
            
            NavigationLink("Order Drink") {
                OderDrinkMainView()}
            
            NavigationLink("Order Food") {
                OrderFoodMainView()}
            
            NavigationLink("Travell app") {
                TravelAppMainView()}
            
            NavigationLink("Custom Curve") {
                CustomCurvesMainView()}
            
           NavigationLink("PS4 ontroller") {
               PS4ControllerMainView()}
//            NavigationLink("GameUI") {
//                GameUIMainView()}
//            NavigationLink("GameUI") {
//                GameUIMainView()}
//            NavigationLink("GameUI") {
//                GameUIMainView()}
//            NavigationLink("GameUI") {
//                GameUIMainView()}
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
