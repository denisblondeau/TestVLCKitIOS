//
//  ContentView.swift
//  TestVLCKitIOS
//
//  Created by Denis Blondeau on 2023-02-26.
//

import SwiftUI

struct ContentView: View {
    
    let player = VLCPlayer(url: "rtsp://username:password@someFeedWebsite.com/liveFeed")
    
    var body: some View {
        
        VStack {
            
            player
                .frame(height: 500, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            HStack {
                
                Button("Play") {
                    player.play()
                }
                Button("Stop") {
                    player.stop()
                }
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
