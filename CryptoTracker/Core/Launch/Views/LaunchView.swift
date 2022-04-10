//
//  LaunchView.swift
//  CryptoTracker
//
//  Created by Irakli Sokhaneishvili on 10.04.22.
//

import SwiftUI

struct LaunchView: View {
    
    @State private var loadingText: [String] = "Loading your portfolio...".map { String($0) }
    @State private var showLoadingText = false
    
    var body: some View {
        ZStack {
            Color.launch.background
                .ignoresSafeArea()
            Image("logo-transparent")
                .resizable()
                .frame(width: 100, height: 100)
            ZStack {
                if showLoadingText {
                    HStack(spacing: 0) {
                        ForEach(loadingText.indices) { index in
                            Text(loadingText[index])
                                .font(.headline)
                                .fontWeight(.heavy)
                                .foregroundColor(Color.launch.accent)
                        }
                    }
                    .transition(AnyTransition.scale.animation(.easeIn))
                }
            }
            .offset(y: 70)
            .onAppear {
                showLoadingText.toggle()
            }
        }
    }
}

struct LaunchView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchView()
    }
}
