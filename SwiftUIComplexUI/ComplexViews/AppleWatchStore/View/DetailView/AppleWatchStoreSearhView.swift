//
//  AppleWatchStoreSearhView.swift
//  SwiftUIComplexUI
//
//  Created by Amirreza Zarepour on 3/20/22.
//

import SwiftUI

struct AppleWatchStoreSearhView: View {
    
    //MARK: - Vars
    @State private var text: String = ""
    
    //MARK: - MainBody
    var body: some View {
        TextField("Search...", text: $text)
            .padding()
            .overlay(
            
                HStack{
                    
                    Spacer()
                    
                    
                    Image(systemName: "magnifyingglass")
                }
                    .padding()
            )
            .background(Color.white)
            .cornerRadius(7)
            .foregroundColor(.black)
    }
}

struct AppleWatchStoreSearhView_Previews: PreviewProvider {
    static var previews: some View {
        AppleWatchStoreSearhView()
    }
}
