//
//  WatchScroll.swift
//  SwiftUIComplexUI
//
//  Created by Amirreza Zarepour on 3/18/22.
//

import SwiftUI

struct WatchScroll: View {
    
    //MARK: - Var
    @Binding var detailData: Watch
    @Binding var detail: Bool
    
    //MARK: - MainBody
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 25){
                ForEach(AppleWatchStoreData.instance.watches,id: \.self){watch in
                    ZStack(alignment: .bottom) {
                        watchScrollStand
                        
                        VStack(spacing: 20){
                            appleWatchImage(watch: watch)
                            
                            ///Watch Stand Bottom
                            HStack{
                                appleWatchTitle(watch: watch)
                                
                                Spacer(minLength: 0)
                                
                               plusButton
                            }
                        }
                        .padding(.horizontal)
                        .padding(.bottom)
                    }
                }
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 25)
        }
    }
}

struct WatchScroll_Previews: PreviewProvider {
    static var previews: some View {
        WatchScroll(detailData: .constant(AppleWatchStoreData.instance.watches[0]), detail: .constant(false))
    }
}

extension WatchScroll{
    private var plusButton:       some View {
        Button(action: {
        }) {
            
            Image(systemName: "plus")
                .font(.title)
                .foregroundColor(.white)
                .padding()
                .background(Color.appleWatchStoreColor.orange.rawValue.associatedColor)
                .clipShape(Circle())
        }
    }
    private var watchScrollStand: some View {
       Color.appleWatchStoreColor.brown.rawValue.associatedColor
            .frame(height: Screen.Size.height / 3)
            .cornerRadius(20)
    }
    private func appleWatchImage(watch: Watch) -> some View {
        Image(watch.image)
            .resizable()
            .frame(width: Screen.Size.width / 1.7)
            .onTapGesture {
                self.detailData = watch
                self.detail.toggle()
            }
    }
    private func appleWatchTitle(watch: Watch) -> some View {
        VStack(alignment: .leading, spacing: 12) {
            Text(watch.title)
            
            Text("Apple Watch")
                .fontWeight(.bold)
                .font(.title)
        }
        .foregroundColor(.white)
    }
}
