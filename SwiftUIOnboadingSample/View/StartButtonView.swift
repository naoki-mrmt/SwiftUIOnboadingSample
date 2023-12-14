//
//  StartButtonView.swift
//  SwiftUIOnboadingSample
//
//

import SwiftUI

struct StartButtonView: View {
    
    // MARK: - Properties
    @AppStorage("isOnboading") var isOnboading: Bool?

    var body: some View {
        Button(action: {
            isOnboading = false
        }) {
            HStack(spacing: 8) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 8)
            .background(
                Capsule().strokeBorder(.white, lineWidth: 1.25)
            )
        } //: Button
        .accentColor(.white)
    }
}
