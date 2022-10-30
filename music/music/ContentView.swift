//
//  ContentView.swift
//  music
//
//  Created by 竹田 恭 on 2022/10/30.
//

import SwiftUI

struct ContentView: View {
    let soundPlayer = SoundPlayer()
    var body: some View {
        ZStack {
            BackgroundView(imageName: "background")
            HStack {
                Button {
                    do {
                        try soundPlayer.cymbalPlay()
                    } catch {
                        print("cymbalの再生時にエラーが発生")
                    }
                } label: {
                    Image("cymbal")
                }
                
                Button {
                    do {
                        try soundPlayer.guitarPlay()
                    } catch {
                        print("guitarの再生時にエラーが発生")
                    }
                } label: {
                    Image("guitar")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
