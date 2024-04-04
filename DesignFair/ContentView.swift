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
                Text("Action")
                    .foregroundStyle(.background)
                    .frame(width: 100, height: 60)
                    .background(token.primary)
            })
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
