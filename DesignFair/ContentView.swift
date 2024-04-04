//
//  ContentView.swift
//  DesignFair
//
//  Created by Julia Sakakibara on 02/04/24.
//

import SwiftUI

struct ContentView: View {
    let token = TokenColor()
    
    var body: some View {
        VStack {
            Button(action: {}, label: {
                Text("Button")
                    .font(.largeTitle)
                    .foregroundStyle(.black)
                    .bold()
                    .padding(.horizontal, 60)
                    .padding(.vertical, 12)
            })
            .background {
                RoundedRectangle(cornerRadius: 8)
                    .foregroundStyle(token.primary)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
