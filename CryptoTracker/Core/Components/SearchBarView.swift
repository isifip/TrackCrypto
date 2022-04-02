//
//  SearchBarView.swift
//  CryptoTracker
//
//  Created by Irakli Sokhaneishvili on 02.04.22.
//

import SwiftUI

struct SearchBarView: View {
    
    @State private var searchText: String = ""
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(
                    searchText.isEmpty ? Color.theme.secondaryText : Color.theme.accent
                )
            TextField("Search by name or symbol...", text: $searchText)
                .foregroundColor(Color.theme.accent)
                .overlay(alignment: .trailing) {
                    Image(systemName: "xmark.circle.fill")
                        .padding()
                        .offset(x: 10)
                        .foregroundColor(Color.theme.accent)
                        .opacity(
                            searchText.isEmpty ? 0.0 : 1.0
                        )
                        .onTapGesture {
                            searchText = ""
                        }
                }
        }
        .font(.headline)
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                .fill(Color.theme.background)
                .shadow(color: Color.theme.accent.opacity(0.20), radius: 10, x: 0, y: 0)
        )
        .padding()
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView()
    }
}
