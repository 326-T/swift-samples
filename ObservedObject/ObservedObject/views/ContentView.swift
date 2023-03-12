//
//  ContentView.swift
//  ObservedObject
//
//  Created by 竹田恭 on 2023/03/12.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var dataModel = DataModel(name: "武田", age: 20)
    
    var body: some View {
        VStack {
            Text("\(dataModel.name)は\(dataModel.age)歳です")
                .padding()
            Button(action: {dataModel.name = "竹田"}) {
                Text("名前を変える")
            }.padding()
            Button(action: {dataModel.age += 1}){
                Text("歳をとる")
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
