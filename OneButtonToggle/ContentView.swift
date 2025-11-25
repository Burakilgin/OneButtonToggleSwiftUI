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
    @State private var lastMessageNumber = -1
    @State private var lastImageNumber = -1
    
    
    let messageArray = ["You Are Awesome", "Fabulous", "Amazing", "Creative", "What do you think about that images?", "image5", "Gadzook my friend! I am astonished at how utterly magnificent you are", "image7", "image8", "image9"]
    let imageArray = ["image0", "image1", "image2", "image3", "image4", "image5", "image6", "image7", "image8", "image9"]
    
    
    var body: some View {
        VStack {
            
            Spacer()
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
                .multilineTextAlignment(.center)
                .frame(height: 130)
                .minimumScaleFactor(0.5)
                .animation(.easeInOut(duration: 0.15), value: message)

            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
                .animation(.default, value: imageName)
//bouncy(duration: 0.5, extraBounce: 0.2)
            
            Spacer()
            
        }
        
        Button("Show Message") {
            
            /*if message == message1 {
                message = message2
                imageView = imageString1
            } else {
                message = message1
                imageView = imageString2
            }*/
            
            var messageNumber : Int
            repeat {
                messageNumber = Int.random(in: 0...messageArray.count-1)
                
            }while messageNumber == lastMessageNumber
            
            message = messageArray[messageNumber]
            lastMessageNumber = messageNumber
            
            var imageNumber : Int
            repeat {
                imageNumber = Int.random(in: 0...9)
            } while imageNumber == lastImageNumber
            imageName = "image\(imageNumber)"
            lastImageNumber = imageNumber
            
            
            //imageName = imageArray[Int.random(in: 0...imageArray.count-1)]
            //message = messageArray[Int.random(in: 0...messageArray.count - 1)]
                       
            
/*            imageNumber += 1
            
            
            if imageNumber > 9 {
                imageNumber = 0
                
            }*/

            
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
