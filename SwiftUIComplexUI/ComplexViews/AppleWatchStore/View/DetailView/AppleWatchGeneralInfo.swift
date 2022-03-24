//
//  AppleWatchGeneralInfo.swift
//  SwiftUIComplexUI
//
//  Created by Amirreza Zarepour on 3/20/22.
//

import SwiftUI

struct AppleWatchGeneralInfo: View {
    
    //MARK: - Var
    var title: String
    
    
    var body: some View {
        HStack{
            
            VStack(alignment: .leading, spacing: 10) {
                
                Text(title)
                
                Text("Apple Watch Series 5")
                    .font(.title)
                    .fontWeight(.bold)
            }
            .foregroundColor(.white)
            
            Spacer()
        }
        .padding(.vertical)
        .padding(.horizontal)
    }
}

struct AppleWatchGeneralInfo_Previews: PreviewProvider {
    static var previews: some View {
        AppleWatchGeneralInfo(title: "Color Black")
    }
}
