//
//  FrameworkDetailView.swift
//  AppleFrameworks-SwiftUI
//
//  Created by Shilpa Joy on 2024-06-14.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
   // @Binding var isShowingDetailView: Bool // Binding makes this isShowingDetailView equal to what ever it is in parent view(FrameworkGridView) ie, $viewModel.isShowingDetailView
    // @Binding lets us declare that one value actually comes from elsewhere, and should be shared in both places
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack() {
            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()// push the button all the way down
            
            Button {
                isShowingSafariView = true
            }label: {
                AFButton(title: "Learn More")
                   
            }
        }
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        })
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework)
}
