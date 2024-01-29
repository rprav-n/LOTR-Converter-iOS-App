//
//  ExchangeInfo.swift
//  LOTRConverter
//
//  Created by Praveen R on 29/01/24.
//

import SwiftUI

struct ExchangeInfo: View {
    var body: some View {
        ZStack {
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack {
                Text("Exchange Rates")
                    .font(.largeTitle)
                    .tracking(2.0)
                
                Text("Here at the Prancing Pony, we are happy to offer you a place where you can exchange all the known currencies in the entire world except one. We used to take Brandy Bucks, but after finding out that it was a person instead of a piece of paper, we realized it had no value to us. Below is a simple guide to our currency exchange rates:")
                    .font(.title2)
                    .padding()
                
                ExchangeRate(leftImageResource: .goldpiece, text: "1 Gold Piece = 4 Gold Pennies", rightImageResouce: .goldpenny)
                ExchangeRate(leftImageResource: .goldpenny, text: "1 Gold Penny = 4 Silver Piece", rightImageResouce: .silverpiece)
                ExchangeRate(leftImageResource: .silverpiece, text: "1 Silver Piece = 4 Silver Pennies", rightImageResouce: .silverpenny)
                ExchangeRate(leftImageResource: .silverpenny, text: "1 Silver Pennies = 100 Copper Pennies", rightImageResouce: .copperpenny)
                
                Button(action: {
                    
                }, label: {
                    Text("Done")
                })
                .foregroundStyle(.white)
                .buttonStyle(.borderedProminent)
                .tint(.brown)
                .font(.largeTitle)
                .padding()
            }
            .foregroundStyle(.black)
        }
    }
}

#Preview {
    ExchangeInfo()
}

