//
//  FructusApp.swift
//  Fructus
//
//  Created by Ezequiel Rasgido on 09/09/2021.
//

import SwiftUI

@main
struct FructusApp: App {

    //MARK: - PROPERTIES Section

    @AppStorage("isOnboarding") var isOnboarding = true

    //MARK: - BODY Section
    var body: some Scene {
        WindowGroup {
            if self.isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
