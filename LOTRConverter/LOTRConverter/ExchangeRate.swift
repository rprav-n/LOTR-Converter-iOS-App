//
//  ExchangeRate.swift
//  LOTRConverter
//
//  Created by Praveen R on 29/01/24.
//

import SwiftUI

struct ExchangeRate: View {
    let leftImageResource: ImageResource
    let text: String
    let rightImageResouce: ImageResource
    
    var body: some View {
        HStack {
            Image(leftImageResource)
                .resizable()
                .scaledToFit()
                .frame(width: 33)
            Text(text)
            Image(rightImageResouce)
                .resizable()
                .scaledToFit()
                .frame(width: 33)
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    ExchangeRate(leftImageResource: .goldpiece, text: "1 Gold Piece = 4 Gold Pennies", rightImageResouce: .goldpenny)
}
