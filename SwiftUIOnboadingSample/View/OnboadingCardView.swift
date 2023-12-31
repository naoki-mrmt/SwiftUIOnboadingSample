//
//  OnbaodingCardView.swift
//  SwiftUIOnboadingSample
//
//

import SwiftUI

struct OnboadingCardView: View {
    
    // MARK: - Properties
    let sample: SampleModel
    @State private var isAnimating: Bool = false

    // MARK: - Body
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                // fruit: Image
                Image(sample.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15 ), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                // fruit: Title
                Text(sample.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                // fruit: Headline
                Text(sample.headline)
                    .foregroundColor(.white)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                // Button: Start
                StartButtonView()
            } //: VStack
        } //: ZStack
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0,maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: sample.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}
