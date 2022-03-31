//
//  CryptoTrackerApp.swift
//  CryptoTracker
//
//  Created by Irakli Sokhaneishvili on 31.03.22.
//

import SwiftUI

@main
struct CryptoTrackerApp: App {
    
    @StateObject private var vm = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
            .environmentObject(vm)
        }
    }
}
