//
//  OderDrinkMainView.swift
//  SwiftUIComplexUI
//
//  Created by Amirreza Zarepour on 3/26/22.
//

import SwiftUI

struct OderDrinkMainView: View {
    
    //MARK: - Var
    @State var counter = 0
    
    //MARK: - View
    private var background:     some View {
        Color("OrderDrinkRed")
            .edgesIgnoringSafeArea(.all)
    }
    private var drinkImage:     some View {
        Image("OrderDrinkOrange")
            .resizable()
            
    }
    private var drinkTitle:     some View {
        HStack{
            
            Text("Orange Juice")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.black)
            
            Spacer()
            
        }.padding(.top, 25)
        
    }
    private var orderDesc:      some View {
        HStack{
            
            VStack(alignment: .leading, spacing: 15) {
                
                Text("Fresh Drink")
                    .font(.caption)
                    .foregroundColor(.gray)
                
                HStack(spacing: 15){
                    
                    Image(systemName: "star")
                    
                    Text("4.5")
                }
                .foregroundColor(.gray)
                
                HStack(spacing: 15){
                    
                    Image(systemName: "stopwatch")
                    
                    Text("5 Minutes")
                }
                .foregroundColor(.gray)
            }
            
            Spacer()
        }
        .padding(.top)
    }
    private var juiceDesc:      some View {
        HStack(spacing: 18){
            
            VStack{
                
                Text("30%")
                Text("Sweet")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            .padding()
            .background(Color.white)
            .cornerRadius(10)
            .shadow(radius: 4)
            
            VStack{
                
                Text("30%")
                Text("Fruit")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            .padding()
            .background(Color.white)
            .cornerRadius(10)
            .shadow(radius: 4)
            
            VStack{
                
                Text("40%")
                Text("Water")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            .padding()
            .background(Color.white)
            .cornerRadius(10)
            .shadow(radius: 4)
        }
        .padding(.top)
    }
    private var optionText:     some View {
        Text("Options")
            .fontWeight(.bold)
            .foregroundColor(.black)
            .padding(.top)
    }
    private var options:        some View {
        HStack(spacing: 18){
            
            Button(action: {
                
            }) {
                
                VStack{
                    
                    Text("Basic")
                }
                .padding()
                .background(Color.white)
                .cornerRadius(10)
                .shadow(radius: 4)
            }
            .foregroundColor(.black)
            
            Button(action: {
                
            }) {
                
                VStack{
                    
                    Text("Pepper Toppings")
                }
                .padding()
                .background(Color.white)
                .cornerRadius(10)
                .shadow(radius: 4)
            }
            .foregroundColor(.black)
            
        }
        .padding(.top)
    }
    private var infoButton:     some View {
        Button(action: {
            
        }) {
            
            Image(systemName: "info")
                .foregroundColor(.black)
                .padding()
        }
        .background(Color.white)
        .clipShape(Circle())
        .shadow(radius: 4)
        .padding(.top)
    }
    private var orderCounter:   some View {
        VStack(spacing : 15){
        
        Button(action: {
            
            self.counter += 1
            
        }) {
            
            Image(systemName: "plus.circle")
                .foregroundColor(.gray)
                .font(.title)
        }
        
        Text("\(self.counter)")
        .foregroundColor(.yellow)
        .padding(10)
        .background(Color.black)
        .clipShape(Circle())
        
        Button(action: {
            
            if self.counter != 0{
                
                self.counter -= 1
            }
            
        }) {
            
            Image(systemName: "minus.circle")
                .foregroundColor(.gray)
                .font(.title)
        }
    }
            .padding()
            .background(Color.white)
            .cornerRadius(10)
            .shadow(radius: 4)
            .padding(.trailing,25)
            .offset(y: -55)
    
    }
    private var invoice:        some View {
        VStack(alignment: .leading, spacing: 15) {
            
            Text("Total Order")
                .fontWeight(.bold)
            
            HStack(spacing : 18){
                
                VStack(spacing: 8){
                    
                    Text("\(self.counter)")
                        .fontWeight(.bold)
                    
                    Text("Total Order")
                }
                
                VStack(spacing: 8){
                    
                    Text("$\(self.counter * 75)")
                        .fontWeight(.bold)
                    
                    Text("Total Price")
                }
            }
        }
        .foregroundColor(.white)
        .padding(.leading, 20)
    }
    private var purchaseButton: some View {
        Button(action: {
            
            
        }) {
            
            VStack{
                
                Text("Pay")
                    .fontWeight(.bold)
                
                Text("Now")
                    .fontWeight(.bold)
            }
            .foregroundColor(.white)
            .padding(.horizontal, 25)
            .padding(.vertical, 25)
            .background(Color.yellow)
            .cornerRadius(15)
            .shadow(radius: 4)
        }
        .padding(.trailing, 25)
        .offset(y: -55)
    }
    
    
    //MARK: - MainBody
    var body: some View {
        ZStack{
           background
            
            VStack(spacing: 0){
                drinkImage
                   

                ZStack(alignment: .topTrailing){
                    VStack{
                        drinkTitle
                        
                        orderDesc
                        
                        juiceDesc
                        
                        optionText
                        
                        options
                        
                        infoButton
                    } .padding(.bottom, 40)
                    .padding(.horizontal,20)
                    .background(Trapezius().fill(Color.white))
                    .clipShape(CustomCornerRadiusShape(radii: 35, corners: [.topLeft, .topRight]))
                    
                    orderCounter
                    
                }
                .zIndex(40)
                .offset(y: -40)
                .padding(.bottom, -40)
                
                
                HStack{
                    invoice
                    
                    Spacer(minLength: 0)
                    
                    purchaseButton
                }.zIndex(40)
                .padding(.bottom, 10)
                
                Spacer()
            } .edgesIgnoringSafeArea(.top)
                .animation(.default, value: counter)
                
                .navigationBarHidden(true)
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct OderDrinkMainView_Previews: PreviewProvider {
    static var previews: some View {
        OderDrinkMainView()
    }
}
