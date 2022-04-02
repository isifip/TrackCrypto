//
//  StatisticView.swift
//  CryptoTracker
//
//  Created by Irakli Sokhaneishvili on 02.04.22.
//

import SwiftUI

struct StatisticView: View {
    
    let stat: StatisticModel
    
    var body: some View {
        Text(stat.title)
    }
}

struct StatisticView_Previews: PreviewProvider {
    static var previews: some View {
        StatisticView(stat: dev.stat1)
    }
}
