//
//  MenuBar.swift
//  SwiftUIComplexUI
//
//  Created by Amirreza Zarepour on 3/18/22.
//

import SwiftUI

struct AppleWatchStoreMenuBar: View {
    
    //MARK: - Var
    @State var index = "ALL"
    
    //MARK: - MainBody
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 25){
                ForEach(AppleWatchStoreData.instance.menu,id: \.self){ item in
                    Button(action: {
                        self.index = item
                    }) {
                        Text(item)
                            .foregroundColor(self.index == item ?
                                             Color.appleWatchStoreColor.orange.rawValue.associatedColor:
                                             Color.black.opacity(0.6))
                            .fontWeight(.bold)
                    }
                }
            }
            .padding(.horizontal)
        }
    }
}

struct MenuBar_Previews: PreviewProvider {
    static var previews: some View {
        AppleWatchStoreMenuBar()
    }
}


