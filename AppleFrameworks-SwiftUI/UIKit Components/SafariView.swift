//
//  SafariView.swift
//  AppleFrameworks-SwiftUI
//
//  Created by Shilpa Joy on 2024-06-18.
//

import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {
    let url: URL
    func makeUIViewController(context: UIViewControllerRepresentableContext<Self>) -> SFSafariViewController {
        return SFSafariViewController(url: url)
    }

    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView >) {
        // No need to do anything here
    }
    
   
    
    
}
