//
//  CurrencyIcon.swift
//  LOTRConverter
//
//  Created by Praveen R on 30/01/24.
//

import SwiftUI

struct CurrencyIcon: View {
    
    let currencyImageResource: ImageResource
    let currencyName: String
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Image(currencyImageResource)
                .resizable()
                .scaledToFit()
            Text(currencyName)
                .padding(3)
                .font(.caption)
                .frame(maxWidth: .infinity)
                .background(.brown.opacity(0.75))
        }
        .padding(3)
        .frame(width: 100, height: 100)
        .background(.brown)
        .clipShape(RoundedRectangle(cornerRadius: 25.0))
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    CurrencyIcon(currencyImageResource: .silverpenny, currencyName: "Silver Penny")
}
