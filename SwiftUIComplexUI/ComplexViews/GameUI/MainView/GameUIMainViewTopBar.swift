//
//  GameUIMainViewTopBar.swift
//  SwiftUIComplexUI
//
//  Created by Amirreza Zarepour on 3/25/22.
//

import SwiftUI

struct GameUIMainViewTopBar: View {
    
    
    var body: some View {
        HStack{
            
            Text("Your Player")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            Spacer()
            
            Button(action: {
                
            }) {
                
                Image(systemName: "line.horizontal.3.decrease")
                    .font(.title)
                    .foregroundColor(.white)
            }
        }
        .padding(.horizontal)
        .padding(.top)
    }
}

struct GameUIMainViewTopBar_Previews: PreviewProvider {
    static var previews: some View {
        GameUIMainViewTopBar()
    }
}
