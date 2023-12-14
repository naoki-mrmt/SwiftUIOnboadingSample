//
//  OnboadingView.swift
//  SwiftUIOnboadingSample
//
//

import SwiftUI

struct OnboadingView: View {

    // MARK: - Properties
    var samples: [SampleModel] = sampleData

    // MARK: - Body
    var body: some View {
        TabView {
            ForEach(samples[0 ... 5]) { item in
                OnboadingCardView(sample: item)
            } //: ForEach
        } //: Tab
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}
