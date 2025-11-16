//
//  ContentView.swift
//  OneButtonToggle
//
//  Created by Burak Ilgın on 15.11.2025.
//

import SwiftUI

struct ContentView: View {
    
    @State private var message = ""
    @State private var imageView = ""
    
    var body: some View {
        VStack {
            
            Spacer()
            
            Image(systemName: imageView)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)

            Text(message)
                .font(.largeTitle)
                .fontWeight(.thin)
            
            Spacer()
            
        }
        
        Button("Press Me!") {
            if message == "You are awesome!" {
                message = "You are Great!"
                imageView = "hand.thumbsup"
            } else {
                message = "You are awesome!"
                imageView = "sun.max.fill"
            }
        }
        
            .tint(.orange)
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.roundedRectangle(radius: 10))

        .padding()
    }
}

#Preview {
    ContentView()
}
