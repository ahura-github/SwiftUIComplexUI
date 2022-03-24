//
//  TabBar.swift
//  SwiftUIComplexUI
//
//  Created by Amirreza Zarepour on 3/18/22.
//

import SwiftUI

struct AppleWatchStoreTabBar: View {
    
    struct TabBarModifier: ViewModifier{
        func body(content: Content) -> some View {
            content
            .padding(.horizontal, 30)
            .padding(.top,25)
            ///For no safearea phones padding will be 15 at bottom...
            .padding(.bottom, Screen.Edge.bottomSafeArea == 0 ? 15 : Screen.Edge.bottomSafeArea + 10)
            .background(Color.white)
            .clipShape(CustomCornerRadiusShape(radii: 45, corners: [.topLeft, .topRight]))
        }
    }
    
    //MARK: - Var
    @State var tab   = 0
    
    //MARK: - MainBody
    var body: some View {
        HStack{
            hearthButton
            Spacer(minLength: 0)
            
            searchButton
            
            Spacer(minLength: 0)
            
            profileButton
        }
        .modifier(TabBarModifier())
    }
}

struct AppleWatchStoreTabBar_Previews: PreviewProvider {
    static var previews: some View {
        AppleWatchStoreTabBar()
    }
}

extension AppleWatchStoreTabBar{
    private var hearthButton:  some View {
        Button(action: {
            
            self.tab = 0
            
        }) {
            
            Image(systemName: "suit.heart.fill")
                .font(.title)
                .foregroundColor(self.tab == 0 ? .black : Color.black.opacity(0.25))
            
        }
    }
    private var searchButton:  some View {
        Button(action: {
            
            self.tab = 1
            
        }) {
            
            Image(systemName: "safari")
                .font(.title)
                 .foregroundColor(self.tab == 1 ? .black : Color.black.opacity(0.25))
            
        }
    }
    private var profileButton: some View {
        Button(action: {
            
            self.tab = 2
            
        }) {
            
            Image(systemName: "person.circle")
                .font(.title)
                .foregroundColor(self.tab == 2 ? .black : Color.black.opacity(0.25))
            
        }
    }
}
