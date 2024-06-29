//
//  FrameworkTitleView.swift
//  AppleFrameworks-SwiftUI
//
//  Created by Shilpa Joy on 2024-06-18.
//

import SwiftUI

struct FrameworkTitleView: View {
    let framework: Framework
    var body: some View {
        VStack(spacing: 20) {
            Image(framework.imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 90, height: 90)
            
            Text("\(framework.name)")
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(Color(.label))
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}
