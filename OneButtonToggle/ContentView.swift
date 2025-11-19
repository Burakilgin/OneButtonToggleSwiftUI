//
//  ContentView.swift
//  OneButtonToggle
//
//  Created by Burak Ilgın on 15.11.2025.
//

import SwiftUI

struct ContentView: View {
    
    @State private var message = ""
    @State private var imageName = ""
    @State private var imageNumber = 0
    @State private var startMessage = ""
    
    let messageArray = ["image0", "image1", "image2", "image3", "image4", "image5", "image6", "image7", "image8", "image9"]
    let imageArray = ["image0", "image1", "image2", "image3", "image4", "image5", "image6", "image7", "image8", "image9"]
    
    var body: some View {
        VStack {
            
            Spacer()
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)

            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
            
            
            Spacer()
            
        }
        
        Button("Show Message Me!") {
            
            /*if message == message1 {
                message = message2
                imageView = imageString1
            } else {
                message = message1
                imageView = imageString2
            }*/
            
            imageNumber += 1
            
            
            if imageNumber > 9 {
                imageNumber = 0
                
            }
            
            imageName = imageArray[imageNumber]
            message = messageArray[imageNumber]
            
            
            print("Image Number: \(imageNumber)")
            
        }
        
            .tint(.red)
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.roundedRectangle(radius: 10))

        .padding()
    }
}

#Preview {
    ContentView()
}
