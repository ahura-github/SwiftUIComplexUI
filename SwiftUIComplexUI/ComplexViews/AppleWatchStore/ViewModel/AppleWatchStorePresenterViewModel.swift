//
//  AppleWatchStorePresenterViewModel.swift
//  SwiftUIComplexUI
//
//  Created by Amirreza Zarepour on 3/18/22.
//

import Foundation

final class AppleWatchStorePresenterViewModel: ObservableObject{
    @Published var showDetailView = false
    @Published var detailData     = AppleWatchStoreData.instance.watches[0]
}
