//
//  ContentView.swift
//  EnvironmentObject
//
//  Created by 竹田恭 on 2023/03/12.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var dataModel: DataModel
    var body: some View {
        VStack {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                .foregroundColor(.accentColor)
                Text("Hello, world!")
                Text("\(dataModel.name)は\(dataModel.age)歳です。")
            }.padding()
            
            AnotherContentView()
            
            VStack {
                Button(action: {dataModel.name = "竹田"}) {
                    Text("名前を変える")
                }
                Button(action: {dataModel.age += 1}) {
                    Text("歳をとる")
                }
            }.padding()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(DataModel())
    }
}
