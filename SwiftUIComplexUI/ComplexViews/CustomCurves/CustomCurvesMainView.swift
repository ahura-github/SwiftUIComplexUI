//
//  CustomCurvesMainView.swift
//  SwiftUIComplexUI
//
//  Created by Amirreza Zarepour on 3/29/22.
//

import SwiftUI

struct CustomCurvesMainView: View {
    
    @State var index = 0
    
    var body: some View {
        VStack(spacing: 0){
            CustomCurvesTopBar()
                .clipShape(CustomCornerRadiusShape(radii: 55.0, corners: .bottomRight))
            
            
            
  
            CustomCurveIntroductionBubble()
                .padding(.top, -70)
            
            
            
            ZStack{
                
                Color("CustomCurveSelect")
                
                ScrollView(.vertical, showsIndicators: false){
                    
                    HStack{
                        
                        Text("Explore Categories")
                            .fontWeight(.bold)
                            .font(.system(size: 20))
                        
                        Spacer()
                    
                        Button(action: {}){
                            Image(systemName: "ellipsis")
                        }
                        
                    }
                    .foregroundColor(.black)
                    .padding(.leading, 35)
                    .padding(.top, 50)
                    .padding(.trailing)
                    
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        
                        CustomCurveJobCategoryCard()
                        
                    }
                    .padding(.top, 25)
                    
                    
                    
                    HStack{
                        
                        Text("Popular Search")
                            .fontWeight(.bold)
                            .font(.system(size: 20))
                        
                        Spacer()
                    
                        Button(action: {}){
                            Image(systemName: "ellipsis")
                        }
                        
                    }
                    .foregroundColor(.black)
                    .padding(.leading, 25)
                    .padding(.top, 25)
                    .padding(.trailing)
                    
                    
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        
                        HStack(spacing: 25){
                            
                            ///first
                            VStack(spacing: 10){
                                
                                HStack{
                                    
                                    
                                    Spacer()
                                    
                                    Image("CustomCurves")
                                        .resizable()
                                        .frame(width: 100, height: 70)
                                    
                                }
                                
                                HStack{
                                    
                                    
                                    VStack(alignment: .leading, spacing: 15){
                                        
                                        Text("UI/UX")
                                            .font(.title)
                                            .foregroundColor(.black)
                                        
                                        Text("Designer")
                                            .font(.title)
                                            .foregroundColor(.black)
                                        
                                        Text("4 Job opportunities")
                                            .foregroundColor(.gray)
                                    }
                                    Spacer()
                                }
                                .padding(.leading, 15)
                                
                            }
                            .padding(.bottom, 20)
                            .frame(width: Screen.Size.width / 2)
                            .background(index == 0 ? Color("CustomCurveSelect") : Color.black.opacity(0.06))
                            .cornerRadius(35)
                            .onTapGesture {
                                index = 0
                            }
                            ///second
                            VStack(spacing: 10){
                                
                                HStack{
                                    
                                    
                                    Spacer()
                                    
                                    Image("CustomCurves")
                                        .resizable()
                                        .frame(width: 100, height: 70)
                                    
                                }
                                
                                HStack{
                                    
                                    
                                    VStack(alignment: .leading, spacing: 15){
                                        
                                        Text("UI/UX")
                                            .font(.title)
                                            .foregroundColor(.black)
                                        
                                        Text("Designer")
                                            .font(.title)
                                            .foregroundColor(.black)
                                        
                                        Text("4 Job opportunities")
                                            .foregroundColor(.gray)
                                    }
                                    Spacer()
                                }
                                .padding(.leading, 15)
                                
                            }
                            .padding(.bottom, 20)
                            .frame(width: Screen.Size.width / 2)
                            .background(index == 1 ? Color("CustomCurveSelect") : Color.black.opacity(0.06))
                            .cornerRadius(35)
                            .onTapGesture {
                                index = 1
                            }
                            
                            ///third
                            VStack(spacing: 10){
                                
                                HStack{
                                    
                                    
                                    Spacer()
                                    
                                    Image("CustomCurves")
                                        .resizable()
                                        .frame(width: 100, height: 70)
                                    
                                }
                                
                                HStack{
                                    
                                    
                                    VStack(alignment: .leading, spacing: 15){
                                        
                                        Text("UI/UX")
                                            .font(.title)
                                            .foregroundColor(.black)
                                        
                                        Text("Designer")
                                            .font(.title)
                                            .foregroundColor(.black)
                                        
                                        Text("4 Job opportunities")
                                            .foregroundColor(.gray)
                                    }
                                    Spacer()
                                }
                                .padding(.leading, 15)
                                
                            }
                            .padding(.bottom, 20)
                            .frame(width: Screen.Size.width / 2)
                            .background(index == 2 ? Color("CustomCurveSelect") : Color.black.opacity(0.06))
                            .cornerRadius(35)
                            .onTapGesture {
                                index = 2
                            }

                            ///fourth
                            VStack(spacing: 10){
                                
                                HStack{
                                    
                                    
                                    Spacer()
                                    
                                    Image("CustomCurves")
                                        .resizable()
                                        .frame(width: 100, height: 70)
                                    
                                }
                                
                                HStack{
                                    
                                    
                                    VStack(alignment: .leading, spacing: 15){
                                        
                                        Text("UI/UX")
                                            .font(.title)
                                            .foregroundColor(.black)
                                        
                                        Text("Designer")
                                            .font(.title)
                                            .foregroundColor(.black)
                                        
                                        Text("4 Job opportunities")
                                            .foregroundColor(.gray)
                                    }
                                    Spacer()
                                }
                                .padding(.leading, 15)
                                
                            }
                            .padding(.bottom, 20)
                            .frame(width: Screen.Size.width / 2)
                            .background(index == 3 ? Color("CustomCurveSelect") : Color.black.opacity(0.06))
                            .cornerRadius(35)
                            .onTapGesture {
                                index = 3
                            }


                        }
                        .padding(.horizontal, 25)
                    }
                    .padding(.bottom, Screen.Edge.bottomSafeArea + 15)
                    Spacer()
                }
                .background(Color.white)
                .clipShape(CustomCornerRadiusShape(radii: 70, corners: .topLeft))
            }
            
            
            
            
            
            
            
            
            Spacer()
            
                .navigationBarHidden(true)
        }
        .edgesIgnoringSafeArea(.all)
        .statusBar(hidden: true)
    }
}

struct CustomCurvesMainView_Previews: PreviewProvider {
    static var previews: some View {
        CustomCurvesMainView()
    }
}
