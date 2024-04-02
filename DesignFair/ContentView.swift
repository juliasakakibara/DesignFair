//
//  ContentView.swift
//  DesignFair
//
//  Created by Julia Sakakibara on 02/04/24.
//

import SwiftUI

struct ContentView: View {
    //let token = Tokens()
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
                .foregroundColor(.primary)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
