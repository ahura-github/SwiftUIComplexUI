//
//  Description.swift
//  LampProduct
//
//  Created by Amirreza Zarepour on 7/12/21.
//
//MARK: - Import
import SwiftUI

struct MelodiLampDescription: View {
    
    //MARK: - Var
    @Binding var color: Color
    
    //MARK: - View
    private var title: some View {
        Text("Melodi Lamp")
            .font(.title)
            .fontWeight(.bold)
    }
    private var likeButton: some View {
        Button(action: {
            
        }) {
            
            Image(Assets.MelodiLamps.heart.rawValue)
                .renderingMode(.original)
                .padding()
        }
        .background(self.color == .yellow ? Color.yellow : Color.orange)
        .clipShape(Circle())
    }
    
    //MARK: - MainBody
    var body: some View {
        VStack{
            HStack{
                title
                
                Spacer()
                
                likeButton
            }.padding(.horizontal, 35)
            .padding(.top,25)
            
            
            Text("The lampshape provides directional lighting above the dining table and pleasant diffused light throught the room")
                .multilineTextAlignment(.leading)
                .foregroundColor(.gray)
                .padding(.horizontal, 30)
                .padding(.top,20)
        }
    }
}

struct Description_Previews: PreviewProvider {
    static var previews: some View {
        MelodiLampDescription(color: .constant(.yellow))
    }
}
