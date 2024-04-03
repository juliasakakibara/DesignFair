//
//  ContentView.swift
//  DesignFair
//
//  Created by Julia Sakakibara on 02/04/24.
//

import SwiftUI

struct ContentView: View {
//    let token = Tokens()
    
    var body: some View {
        VStack {
            Button(action: {
                TokenColor.accent.readJson()
            }, label: {
                Text("Action")
                    .foregroundStyle(.background)
                    .frame(width: 100, height: 60)
                    .background(TokenColor.primary.color())
            })
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
