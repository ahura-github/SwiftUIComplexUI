//
//  DetailList.swift
//  LampProduct
//
//  Created by Amirreza Zarepour on 7/12/21.
//
//MARK: - Import
import SwiftUI

struct MelodiLampsDetailList: View {
    
    //MARK: - MainBody
    var body: some View {
        
        HStack(spacing: 10){
            MelodiLampDetailLabel(image: "mat1", description: "22 W")
            MelodiLampDetailLabel(image: "mat2", description: "24 CM")
            MelodiLampDetailLabel(image: "mat3", description: "26 CM")
            MelodiLampDetailLabel(image: "mat4", description: "1.6 CM")
                .frame(maxWidth: 88)
                
        }
        .padding(.top, 20)
        .padding(.bottom, 25)
    }
}

struct DetailList_Previews: PreviewProvider {
    static var previews: some View {
        MelodiLampsDetailList()
    }
}
