//
//  Carousel.swift
//  SwiftUIComplexUI
//
//  Created by Amirreza Zarepour on 3/27/22.
//

import UIKit
import SwiftUI

struct Carousel: UIViewRepresentable{
    
    var width:  CGFloat
    var height: CGFloat
    
    @Binding var page:  Int
    
    
    func makeUIView(context: Context) ->  UIScrollView {
        
        let totalWidth = width * CGFloat(OrderFoodData.instance.foods.count)
        
        let view = UIScrollView()
        
       
        view.isPagingEnabled = true
        ///1.0 is for disabling vertical scroll
        view.contentSize     = CGSize(width: totalWidth, height: 1.0)
        view.bounces         = true
        
        view.showsVerticalScrollIndicator   = false
        view.showsHorizontalScrollIndicator = false
        view.delegate                       = context.coordinator
        //Embeding SwiftUIView Into UIVIew
        
        
        let view1        = UIHostingController(rootView: OrderFoodCarousel(page: $page))
        view1.view.frame = CGRect(x: 0, y: 0, width: totalWidth, height: self.height)
        
        view1.view.backgroundColor = .clear
        
        view.addSubview(view1.view)
        
        return view
    }
    
    func updateUIView(_ uiView: UIScrollView, context: Context) {
        
    }
    
    func makeCoordinator() -> Coordinator {
        return Carousel.Coordinator(parent: self)
    }
    class Coordinator: NSObject, UIScrollViewDelegate{
        var parent: Carousel
        
        init(parent: Carousel){
            self.parent = parent
        }
        
        func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
            ///To get the current page
            withAnimation{
            let page = Int(scrollView.contentOffset.x / Screen.Size.width)
                self.parent.page = page
                print("page \(page)")
            }
        }
    }
}
