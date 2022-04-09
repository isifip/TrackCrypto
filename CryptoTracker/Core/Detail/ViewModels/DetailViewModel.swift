

import Foundation
import Combine

class DetailViewModel: ObservableObject {
    
    let coin: CoinModel
    
    private let coinDetailService: CoinDetailDataService
    private var cancellables = Set<AnyCancellable>()
    
    init(coin: CoinModel) {
        self.coin = coin
        self.coinDetailService = CoinDetailDataService(coin: coin)
        addSubscribers()
    }
    
    private func addSubscribers() {
        coinDetailService.$coinDetails
            .sink { returnedCoinDetails in
                print("Received coin detail data")
                print(returnedCoinDetails)
            }
            .store(in: &cancellables)
    }
}
