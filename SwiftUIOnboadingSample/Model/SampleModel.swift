//
//  SampleModel.swift
//  SwiftUIOnboadingSample
//
//

import SwiftUI

struct SampleModel: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
}
