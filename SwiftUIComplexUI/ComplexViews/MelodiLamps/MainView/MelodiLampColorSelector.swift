//
//  LampColorSelector.swift
//  LampProduct
//
//  Created by Amirreza Zarepour on 7/12/21.
//
//MARK: - Import
import SwiftUI

struct MelodiLampColorSelector: View {
    
    //MARK: - Import
    @Binding var selectedColor: Color
    
    //MARK: - MainBody
    var body: some View {
        HStack(spacing: 20){
            Button(action: {
                self.selectedColor = .yellow
            }){
                VStack(spacing: 8){
                    ZStack{
                        Circle()
                            .fill(Color.yellow)
                            .frame(width: 20, height: 20)
                        
                        Circle()
                            .stroke(self.selectedColor == .yellow ? Color.white : Color.clear, lineWidth: 2)
                            .frame(width: 30, height: 30)
                    }
                    Text("Yellow")
                        .foregroundColor(.white)
                        .font(.caption)
                }
            }
            
            Button(action: {
                self.selectedColor = .orange
            }){
                VStack(spacing: 8){
                    
                    ZStack{
                        Circle()
                            .fill(Color.orange)
                            .frame(width: 20, height: 20)
                        
                        Circle()
                            .stroke(self.selectedColor == .orange ? Color.white : Color.clear, lineWidth: 2)
                            .frame(width: 30, height: 30)
                    }
                    Text("Orange")
                        .foregroundColor(.white)
                        .font(.caption)
                }
            }
        }
        .padding(.top, 15)
        .padding(.bottom, 10)
    }
}

struct LampColorSelector_Previews: PreviewProvider {
    static var previews: some View {
        MelodiLampColorSelector(selectedColor: .constant(.orange))
    }
}
