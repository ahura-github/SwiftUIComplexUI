//
//  TestView.swift
//  SwiftUIComplexUI
//
//  Created by Amirreza Zarepour on 3/20/22.
//

import SwiftUI

struct TestView: View {
    var body: some View {
        ZStack{
            Color.red.edgesIgnoringSafeArea(.all)
        }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
