//
//  MainView.swift
//  LampProduct
//
//  Created by Amirreza Zarepour on 7/12/21.
//
//MARK: - Imports
import SwiftUI

struct MelodiLampMainView : View {
    
    //MARK: - Var
    @State var selectedColor = Color.yellow
    
    //MARK: - View
    private var backGround:        some View {
        return  selectedColor == .yellow ? Color.yellow : Color.orange
    }
    private var backButton:        some View {
        Button(action: {}){
            Image("back")
                .renderingMode(.original)
                .padding()
        }
        .padding(.leading, 10)
        .padding(.top, 20)
    }
    private var lamp:              some View {
        Image(selectedColor == .yellow ? "yellowLamp" : "orangeLamp")
            .resizable()
            .frame(height: 300)
    }
    private var priceTag:          some View {
        Text("$12.99")
            .foregroundColor(.black)
            .font(.title)
            .fontWeight(.bold)
            .padding(.leading, 35)
            .padding(.bottom,25)
    }
    
    
    
    //MARK: - MainBody
    var body: some View{
        
        VStack{
            
            ZStack(alignment: .top){
                VStack{
                    lamp
                    
                    MelodiLampColorSelector(selectedColor: $selectedColor)
                }
                HStack{
                    backButton
                    
                    Spacer()
                    
                    MelodiLampCartIcon()
                }
            }
            .background(backGround)
            .clipShape(CustomCornerRadiusShape(radii: 55, corners: .bottomLeft))
            
            MelodiLampDescription(color: $selectedColor)
            
            Spacer()
            
            MelodiLampsDetailList()
            
            Spacer()
            
            HStack{
                
                priceTag
                
                Spacer()
                
                MelodiLampAddButton(color: $selectedColor)
                
            }
            .navigationBarBackButtonHidden(true)
        }.edgesIgnoringSafeArea(.all)
        .statusBar(hidden: true)
        .animation(.default, value: selectedColor)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MelodiLampMainView()
    }
}
