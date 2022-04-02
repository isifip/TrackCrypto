//
//  UIApplication.swift
//  CryptoTracker
//
//  Created by Irakli Sokhaneishvili on 02.04.22.
//

import Foundation
import SwiftUI


extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
