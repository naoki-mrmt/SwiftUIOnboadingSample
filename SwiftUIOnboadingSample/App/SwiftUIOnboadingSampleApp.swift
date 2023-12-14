//
//  SwiftUIOnboadingSampleApp.swift
//  SwiftUIOnboadingSample
//
//

import SwiftUI

@main
struct SwiftUIOnboadingSampleApp: App {

    // MARK: - Properties
    @AppStorage("isOnboading") var isOnboading: Bool = true

    // MARK: - Body
    var body: some Scene {
        WindowGroup {
            if isOnboading {
                OnboadingView()
            } else {
                ContentView()
            }
        }
    }
}
