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
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
