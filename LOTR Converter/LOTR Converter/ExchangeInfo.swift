//
//  ExchangeInfo.swift
//  LOTR Converter
//
//  Created by Praveen R on 20/05/24.
//

import SwiftUI

struct ExchangeInfo: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            // Background
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack {
                // Title
                Text("Exchange Rates")
                    .font(.largeTitle)
                    .tracking(2.0)
                
                // Description text
                Text("Here at the Prancing Pony, we are happy to offer you a place where you can exchange all the known currencies in the entire world except one. We used to take Brandy Bucks, but after finding out that it was a person instead of a piece of paper, we realized it had no value to us. Below is a simple guide to our currency exchange rates:")
                    .font(.title2)
                    .padding()
                
                // Exchange rates
                ExchangeRate(leftCurrencyImage: .goldpiece, text: "1 Gold Piece = 4 Gold Pennies", rightCurrencyImage: .goldpenny)
                ExchangeRate(leftCurrencyImage: .goldpenny, text: "1 Gold Penny = 4 Silver Pieces", rightCurrencyImage: .silverpiece)
                ExchangeRate(leftCurrencyImage: .silverpiece, text: "1 Silver Piece = 4 Silver Pennies", rightCurrencyImage: .silverpenny)
                ExchangeRate(leftCurrencyImage: .silverpenny, text: "1 Silver Penny = 100 Copper Pennies", rightCurrencyImage: .copperpenny)
                
                // Done button
                Button("Done") {
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown)
                .font(.title3)
                .padding()
                .foregroundStyle(.white)
            }
            .foregroundStyle(.black)
        }
    }
}

#Preview {
    ExchangeInfo()
}
