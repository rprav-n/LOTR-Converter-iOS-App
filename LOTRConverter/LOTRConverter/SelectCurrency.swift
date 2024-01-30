//
//  SelectCurrency.swift
//  LOTRConverter
//
//  Created by Praveen R on 30/01/24.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    
    @State var leftCurrency = Currency.silverPiece
    
    var body: some View {
        ZStack {
            // Parchment bg image
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack {
                // Text
                Text("Select the currency you are starting with:")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                
                // Currency Icons
                LazyVGrid(columns: [GridItem(), GridItem(), GridItem()], content: {
                    ForEach(Currency.allCases) { currency in
                        if leftCurrency.id == currency.id {
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
                                    leftCurrency = currency
                                }
                        }
                    }
                })
                
                
                // Text
                Text("Select the currency you would like to convert to")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                
                // Currency Icons
                
                
                // Done Button
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
            .padding()
        }
    }
}

#Preview {
    SelectCurrency()
}
