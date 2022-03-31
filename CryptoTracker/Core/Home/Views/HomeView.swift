//
//  HomeView.swift
//  CryptoTracker
//
//  Created by Irakli Sokhaneishvili on 31.03.22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            // Background Layer
            Color.theme.background
                .ignoresSafeArea()
            
            // Content Layer
            VStack {
                Text("Header")
                Spacer(minLength: 0)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            HomeView()
                .navigationBarHidden(true)
        }
    }
}
