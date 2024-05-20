//
//  ExchangeRate.swift
//  LOTR Converter
//
//  Created by Praveen R on 20/05/24.
//

import SwiftUI

struct ExchangeRate: View {
    
    let leftCurrencyImage: ImageResource
    let text: String
    let rightCurrencyImage: ImageResource
    
    var body: some View {
        HStack {
            // Left currency image
            Image(leftCurrencyImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            
            // Exchange rate text
            Text(text)
            
            // Right currency image
            Image(rightCurrencyImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
        }
    }
}

#Preview {
    ExchangeRate(leftCurrencyImage: .goldpiece, text: "1 Gold Piece = 4 Gold Pennies", rightCurrencyImage: .goldpenny)
}
