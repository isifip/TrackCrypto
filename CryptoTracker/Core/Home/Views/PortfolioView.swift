

import SwiftUI

struct PortfolioView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject private var vm: HomeViewModel
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 0) {
                    SearchBarView(searchText: $vm.searchText)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack(spacing: 10) {
                            ForEach(vm.allCoins) { coin in
                                Text(coin.symbol.uppercased())
                            }
                        }
                    }
                }
            }
            .navigationTitle("Edit Portfolio")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    XMarkButton(presentationMode: presentationMode)
                }
            }
        }
    }
}

struct PortfolioView_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioView()
            .environmentObject(dev.homeVM)
    }
}
