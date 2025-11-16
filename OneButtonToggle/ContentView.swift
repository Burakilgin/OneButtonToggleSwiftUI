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
    
    let message1 = "You are awesome!"
    let message2 = "You are Great!"
    let imageString1 = "hand.thumbsup"
    let imageString2 = "sun.max.fill"
    
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
            
            if message == message1 {
                message = message2
                imageView = imageString1
            } else {
                message = message1
                imageView = imageString2
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
