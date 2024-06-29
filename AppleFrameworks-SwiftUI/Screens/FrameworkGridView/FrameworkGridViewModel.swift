//
//  FrameworkGridViewModel.swift
//  AppleFrameworks-SwiftUI
//
//  Created by Shilpa Joy on 2024-06-15.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    
    //@Published var isShowingDetailView = false
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())
                               ]
}
