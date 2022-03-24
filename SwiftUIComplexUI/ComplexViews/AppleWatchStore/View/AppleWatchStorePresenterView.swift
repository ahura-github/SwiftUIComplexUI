//
//  AppleWatchStorePresenter.swift
//  SwiftUIComplexUI
//
//  Created by Amirreza Zarepour on 3/18/22.
//

import SwiftUI
/// Hide and show the main view when detail view is visible and invisible

struct AppleWatchStorePresenterView: View {
    
    
    //MARK: - Vars
    @StateObject private var viewModel = AppleWatchStorePresenterViewModel()
    
    //MARK: - MainBody
    var body: some View {
        ZStack{
            detailView
            
            mainView
    
                .navigationBarHidden(true)
        }
        .animation(Animation.default, value: viewModel.detailData)
        .preferredColorScheme(viewModel.showDetailView ? .dark : .light)
    }
}

struct AppleWatchStorePresenter_Previews: PreviewProvider {
    static var previews: some View {
        AppleWatchStorePresenterView()
    }
}

extension AppleWatchStorePresenterView {
    private var detailView: some View {
        AppleWatchStoreDetailView(detailData: $viewModel.detailData,
                                  showDetail: $viewModel.showDetailView)
        
            .opacity(viewModel.showDetailView  ? 1 : 0)
    }
    private var mainView:   some View {
        AppleWatchStoreMainView(detailData: $viewModel.detailData,
                                detail: $viewModel.showDetailView)
            .opacity(viewModel.showDetailView ? 0 : 1)
    }
}
