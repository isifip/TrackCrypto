//
//  XMarkButton.swift
//  CryptoTracker
//
//  Created by Irakli Sokhaneishvili on 03.04.22.
//

import SwiftUI

struct XMarkButton: View {
    
    var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        Button {
            presentationMode.wrappedValue.dismiss()
        } label: {
            Image(systemName: "xmark")
                .font(.headline)
        }
    }
}

//struct XMarkButton_Previews: PreviewProvider {
//    static var previews: some View {
//        XMarkButton()
//    }
//}
