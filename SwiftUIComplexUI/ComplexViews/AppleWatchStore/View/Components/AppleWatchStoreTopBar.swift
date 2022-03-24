//
//  AppleWatchStoreTopBar.swift
//  SwiftUIComplexUI
//
//  Created by Amirreza Zarepour on 3/19/22.
//

import SwiftUI

struct AppleWatchStoreTopBar: View {
    
    //MARK: - Var
    var dark: Bool

    //MARK: - MainBody
    var body: some View {
        //Topbar
        HStack{
            optionButton
            
            Spacer()
            
           purchaseButton
        }
        
    }
}

struct AppleWatchStoreTopBar_Previews: PreviewProvider {
    static var previews: some View {
        AppleWatchStoreTopBar(dark: true)
    }
}

extension AppleWatchStoreTopBar{
    //MARK: - View
    
    private var optionButton:  some View {
        Button(action: {
            
        }) {
            
            Image(systemName: "line.horizontal.3.decrease.circle")
                .font(.title)
                .foregroundColor(dark ? .white : .black)
                .padding(.horizontal)
        }
    }
    private var purchaseButton:some View {
        Button(action: {
            
        }) {
            
            Image(systemName: "cart")
                .font(.title)
                .foregroundColor(dark ? .white : .black)
                .padding(.horizontal)
        }
    }
}
