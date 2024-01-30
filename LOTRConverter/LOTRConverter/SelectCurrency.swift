//
//  SelectCurrency.swift
//  LOTRConverter
//
//  Created by Praveen R on 30/01/24.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    
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
