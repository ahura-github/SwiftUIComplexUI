//
//  TravelAppCarousel.swift
//  SwiftUIComplexUI
//
//  Created by Amirreza Zarepour on 3/28/22.
//

import SwiftUI

struct TravelAppCarousel: UIViewRepresentable {
    
    //MARK: - Var
    @Binding var data: [TravelAppPlace]
    @Binding var index: Int
    @Binding var shouldShowDetailView: Bool
    var size: CGRect
    
    
    func makeUIView(context: Context) -> UIScrollView {
        let viewWidth = (size.width * CGFloat(data.count))
        let view = UIScrollView()
        view.contentSize = CGSize(width: viewWidth, height: size.height)
        
        let child = UIHostingController(rootView: TravelAppHScroll(places: $data, shouldExpand: $shouldShowDetailView, size: size))
        child.view.backgroundColor = .clear
        child.view.frame = CGRect(x: 0, y: 0, width: viewWidth, height: size.height)
     
        view.addSubview(child.view)
        view.showsVerticalScrollIndicator   = false
        view.showsHorizontalScrollIndicator = false
        view.isPagingEnabled = true
        
        view.delegate = context.coordinator
        
        return view
    }
    
    func updateUIView(_ uiView: UIScrollView, context: Context) {
        
        ///Dynamically updates size when new data is added
        for index in 0..<uiView.subviews.count{
            uiView.subviews[index].frame = CGRect(x: 0, y: 0, width: (size.width * CGFloat(data.count)), height: size.height)
        }
        
        uiView.contentSize =  CGSize(width: (size.width * CGFloat(data.count)), height: size.height)
    }
    
    func makeCoordinator() -> Coordinator {
        return TravelAppCarousel.Coordinator(parent: self)
    }
    
    class Coordinator: NSObject, UIScrollViewDelegate {
        var parent: TravelAppCarousel
        
        init(parent: TravelAppCarousel){
            self.parent = parent
        }
        
        func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
            let index = Int(scrollView.contentOffset.x / Screen.Size.width)
            
            parent.index = index
        }
    }
}

