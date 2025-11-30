//
//  ContentView.swift
//  OneButtonToggle
//
//  Created by Burak Ilgın on 15.11.2025.
//

import SwiftUI
import AVFAudio

struct ContentView: View {
    
    @State private var message = ""
    @State private var imageName = ""
    @State private var imageNumber = 0
    @State private var numberOfImages = 10
    @State private var startMessage = ""
    @State private var lastMessageNumber = -1
    @State private var lastImageNumber = -1
    @State private var audioPlayer : AVAudioPlayer!
    @State private var numberOfSound = 6
    @State private var audioString = ""
    @State private var lastAudioNumber = -1
    
    
    let messageArray = ["You Are Awesome", "Fabulous", "Amazing", "Creative", "What do you think about that images?", "image5", "Gadzook my friend! I am astonished at how utterly magnificent you are", "image7", "image8", "image9"]
    
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

            Spacer()
            
            
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
            
            
            
            
            //imageName = imageArray[Int.random(in: 0...imageArray.count-1)]
            //message = messageArray[Int.random(in: 0...messageArray.count - 1)]
                       
            
/*            imageNumber += 1
            
            
            if imageNumber > 9 {
                imageNumber = 0
                
            }*/
            imageShow()
            messageNumber()
            audioNumber()
        }
        
        
        //Stride Method
        /* In stride function we can see that
         Stride(from: thorugh: by:) = Kaçar kaçar artmasını istiyorsak kullanabiliriz
         Stride(from: to: by:) = Kaça kadar artmasını istiyorsak o sayıyı dahil etmeden kullanbiliriz
         Stride(from: to: by:-4) = Bu kullanımda azalmasını sağlarız ama son değer de dahil edilir
         f*/
            .tint(.red)
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.roundedRectangle(radius: 10))

        .padding()
    }
    
    func playSound(soundName: String) {
        guard let soundFile = NSDataAsset(name: soundName) else {
            print("😡Could not read file named \(soundName)")
            return
        }
        
        do {
            audioPlayer = try AVAudioPlayer(data: soundFile.data)
            audioPlayer.play()
        } catch {
            print("😡Error: \(error.localizedDescription) crating audioPlayer")
        }
        
    }
    
    func imageShow () {
        var imageNumber : Int
        repeat {
            imageNumber = Int.random(in: 0...numberOfImages-1)
        } while imageNumber == lastImageNumber
        imageName = "image\(imageNumber)"
        lastImageNumber = imageNumber
    }
    
    func messageNumber() {
        var messageNumber : Int
        repeat {
            messageNumber = Int.random(in: 0...messageArray.count-1)
        }while messageNumber == lastMessageNumber
        message = messageArray[messageNumber]
        lastMessageNumber = messageNumber
        
    }
    
    func audioNumber() {
        var audioNumber : Int
        repeat {
            audioNumber = Int.random(in: 0...numberOfSound-1)
        } while audioNumber ==  lastAudioNumber
        audioString = "sound\(audioNumber)"
        lastAudioNumber = audioNumber
        print(audioString)
        
        playSound(soundName: "sound\(audioNumber)")

    }
    
}

#Preview {
    ContentView()
}
