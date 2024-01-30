//
//  IconGrid.swift
//  LOTRConverter
//
//  Created by Praveen R on 30/01/24.
//

import SwiftUI

struct IconGrid: View {
    @Binding var currency: Currency
    var body: some View {
        LazyVGrid(columns: [GridItem(), GridItem(), GridItem()], content: {
            ForEach(Currency.allCases) { currency in
                if self.currency == currency {
                    CurrencyIcon(currencyImageResource: currency.image, currencyName: currency.name)
                        .shadow(color: .black, radius: 10)
                        .overlay {
                            RoundedRectangle(cornerRadius: 25.0)
                                .stroke(lineWidth: 2.0)
                                .opacity(0.5)
                        }
                } else {
                    CurrencyIcon(currencyImageResource: currency.image, currencyName: currency.name)
                        .onTapGesture {
                            self.currency = currency
                        }
                }
            }
        })
    }
}

#Preview {
    IconGrid(currency: .constant(.goldPenny))
}
