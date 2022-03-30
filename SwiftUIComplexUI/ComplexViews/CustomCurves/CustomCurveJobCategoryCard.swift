//
//  CustomCurveJobCategoryCard.swift
//  SwiftUIComplexUI
//
//  Created by Amirreza Zarepour on 3/30/22.
//

import SwiftUI

struct CustomCurveJobCategoryCard: View {
    
    @State var index = 0
    
    
    var body: some View {
        HStack(spacing: 25){
            
            ///First
            VStack(spacing: 12){
                
                Image(systemName: "desktopcomputer")
                    .font(.title)
                    .foregroundColor(.black)
                    .padding()
                    .background(Color.white)
                    .clipShape(Circle())
                
                
                Text("IT")
                    .foregroundColor(index == 0 ? .white : .black)
            }
            .padding(.horizontal, 10)
            .padding(.vertical, 30)
            .background(index == 0 ? Color("CustomCurveAccent") : .black.opacity(0.06))
            .clipShape(Capsule())
            .onTapGesture {
                self.index = 0
            }
            
            ///Second
            VStack(spacing: 12){
                
                Image(systemName: "scissors")
                    .font(.title)
                    .foregroundColor(.black)
                    .padding()
                    .background(Color.white)
                    .clipShape(Circle())
                
                
                Text("Beauty")
                    .foregroundColor(index == 1 ? .white : .black)
            }
            .padding(.horizontal, 10)
            .padding(.vertical, 30)
            .background(index == 1 ? Color("CustomCurveAccent") : .black.opacity(0.06))
            .clipShape(Capsule())
            .onTapGesture {
                self.index = 1
            }

            ///Third
            VStack(spacing: 12){
                
                Image(systemName: "photo.on.rectangle")
                    .font(.title)
                    .foregroundColor(.black)
                    .padding()
                    .background(Color.white)
                    .clipShape(Circle())
                
                
                Text("Culture")
                    .foregroundColor(index == 2 ? .white : .black)
            }
            .padding(.horizontal, 10)
            .padding(.vertical, 30)
            .background(index == 2 ? Color("CustomCurveAccent") : .black.opacity(0.06))
            .clipShape(Capsule())
            .onTapGesture {
                self.index = 2
            }

            ///Fourth
            VStack(spacing: 12){
                
                Image(systemName: "quote.bubble.fill")
                    .font(.title)
                    .foregroundColor(.black)
                    .padding()
                    .background(Color.white)
                    .clipShape(Circle())
                
                
                Text("Content")
                    .foregroundColor(index == 3 ? .white : .black)
            }
            .padding(.horizontal, 10)
            .padding(.vertical, 30)
            .background(index == 3 ? Color("CustomCurveAccent") : .black.opacity(0.06))
            .clipShape(Capsule())
            .onTapGesture {
                self.index = 3
            }

            ///
        }
        
        .padding(.horizontal, 25)
    }
}

struct CustomCurveJobCategoryCard_Previews: PreviewProvider {
    static var previews: some View {
        CustomCurveJobCategoryCard()
    }
}

extension CustomCurveJobCategoryCard {
    
    
    
    
}
