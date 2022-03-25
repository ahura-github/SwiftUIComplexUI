//
//  MainView.swift
//  NutritionValue
//
//  Created by Amirreza Zarepour on 7/12/21.
//
//MARK: - Import
import SwiftUI

struct NutritionValueMainView: View {
    
    //MARK: - Var
    @State var index: Int     = 0
    @State var fruite: NutritionValueFruite = NutritionValueData.instance.fruites[0]
    
    //MARK: - View
    private var topCircle:    some View {
        Circle()
            .foregroundColor(fruite.color)
            .frame(width: Screen.Size.width * 2, height:  Screen.Size.width * 2)
    }
    private var fruiteView:   some View {
        HStack{
            Button(action: {
                index -= 1
                fruite = NutritionValueData.instance.fruites[index]
            }){
                Image("NutritionValueleft")
                    .renderingMode(.original)
            }
            .opacity(index == 0 ? 0.5 : 1)
            .disabled(index == 0 ? true : false)
            
            
            Image(fruite.image)
            
            
            Button(action: {
                index += 1
                fruite = NutritionValueData.instance.fruites[index]
            }){
                Image("NutritionValueright")
                    .renderingMode(.original)
            }
            .opacity(index == 2 ? 0.5 : 1)
            .disabled(index == 2 ? true : false)
        }
    }
    private var topBar:       some View {
        HStack{
            
            Button(action: {}){
                HStack(spacing: 10){
                    Image("NutritionValueback")
                        .renderingMode(.original)
                    
                    
                    
                    Text("Back")
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                }
            }
            
            Spacer()
            
            Button(action:{}){
                Image("NutritionValuebag")
                    .renderingMode(.original)
            }
        }
        .padding()
        .padding(.top)
    }
    private var name:         some View {
        Text(self.fruite.name)
            .fontWeight(.bold)
            .font(.title)
    }
    private var price:        some View {
        Text(self.fruite.price)
            .fontWeight(.bold)
    }
    private var descrition:   some View {
        Text(self.fruite.content)
            .multilineTextAlignment(.center)
            .foregroundColor(.gray)
    }
    private var nutritionTag: some View {
        Text("Nutrition Value")
            .font(.title)
            .fontWeight(.bold)
            .padding(.top)
    }
    private var calorieslbl:  some View {
        HStack{
            
            Image(systemName: "flame.fill")
            .resizable()
            .frame(width: 25, height: 35)
            .foregroundColor(.white)
            
            VStack(alignment: .leading, spacing: 4){
                
                Text(fruite.calories)
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                
                Text("Calories")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
            }
            .padding(.leading, 20)
        }
        .padding()
        .background(Color.purple)
        .cornerRadius(10)
    }
    private var attributeRow: some View {
        HStack{
            
            VStack(alignment: .center, spacing: 10) {
                
                Text(fruite.expand[0])
                    .fontWeight(.bold)
                
                Text("Fat")
                    .foregroundColor(.gray)
            }
            
            Spacer()
            
            VStack(alignment: .center, spacing: 10) {
                
                Text(fruite.expand[1])
                    .fontWeight(.bold)
                
                Text("Carbohydrade")
                    .foregroundColor(.gray)
            }
            
            Spacer()
            
            VStack(alignment: .center, spacing: 10) {
                
                Text(fruite.expand[2])
                    .fontWeight(.bold)
                
                Text("Protien")
                    .foregroundColor(.gray)
            }
        }
        .padding(.horizontal)
        .padding(.top, 20)
    }
    private var purchaseBtn:  some View {
        Button(action: {
            
        }) {
            
            Text("Add to Cart")
                .foregroundColor(.white)
                .fontWeight(.bold)
                .padding(.vertical)
                .frame(width: Screen.Size.width - 50)
                .background(Color.purple)
                .clipShape(Capsule())
        }
        .padding(.bottom, 25)
    }
    
    //MARK: - MainBody
    var body: some View {
        ZStack{
            
            Color.white
            
            VStack{
                topBar
                Spacer()
                
                VStack(spacing: 20){
                    
                    name
                    price
                    descrition
                    
                    nutritionTag
                    
                    calorieslbl
                    attributeRow
                    
                    
                    purchaseBtn
                }.padding(.horizontal, 20)
                
                
                
            }.padding(.bottom)
            .zIndex(1)
            
            topCircle
                .position(x: Screen.Size.width / 2, y: (Screen.Size.width / 2) - 350)
            
            fruiteView
                .position(x: Screen.Size.width / 2, y: 300)
            
            
            
          
                .navigationBarHidden(true)
        }
        .edgesIgnoringSafeArea(.all)
        .animation(.default, value: index)
    }
}

struct NutritionValueMainView_Previews: PreviewProvider {
    static var previews: some View {
        NutritionValueMainView()
    }
}
