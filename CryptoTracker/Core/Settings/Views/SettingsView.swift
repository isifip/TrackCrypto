

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    let defaultURL = URL(string: "https://www.google.com")!
    let youtubeURL = URL(string: "https://www.youtube.com")!
    let twitterURL = URL(string: "https://www.twitter.com")!
    let coingeckoURL = URL(string: "https://www.coingecko.com")!
    let personalURL = URL(string: "https://www.github.com/isifip")!
    
    var body: some View {
        NavigationView {
            List {
                appSection
                goinGeckoSection
                developerSection
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Settings")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    XMarkButton(presentationMode: presentationMode)
                }
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

extension SettingsView {
    private var appSection: some View {
        Section("About app") {
            HStack(spacing: 10) {
                Image("logo")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                Text("This app was made using MVVM architecture, Combine and Core Data")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
        }
    }
    
    
    private var goinGeckoSection: some View {
        Section("CoinGecko") {
            VStack(alignment:.leading, spacing: 10) {
                Image("coingecko")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 40)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("Crypto currency data that is used in the app comes from a free API from CoinGecko! Prices may be slightly delayed.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            Link("Visit CoinGecko", destination: coingeckoURL)
                .tint(.blue)
        }
    }
    
    private var developerSection: some View {
        Section("Developer") {
            HStack(spacing: 10) {
//                //Image("logo")
//                    .resizable()
//                    .scaledToFit()
//                    .frame(height: 50)
//                    .clipShape(Circle())
                Text("I'm beginner iOS developer. This app was developed by Irakli. It uses SwiftUI and is written 100% in Swift. The projet benefits from multi-threading, publishers/subscriber and data persistance.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            Link("Twitter", destination: twitterURL)
                .tint(.blue)
            Link("Github", destination: personalURL)
                .tint(.blue)
        }
    }
}
