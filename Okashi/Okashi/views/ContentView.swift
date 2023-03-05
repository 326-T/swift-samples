//
//  ContentView.swift
//  Okashi
//
//  Created by 竹田 恭 on 2023/01/02.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var okashiDataList = OkashiData()
    
    @State var inputText = ""
    var body: some View {
        VStack {
            TextField("キーワード", text: $inputText, prompt: Text("キーワードを入力してください"))
        }
        .onSubmit {
            okashiDataList.searchOkashi(keyword: inputText)
        }
        .padding()
        
        List(okashiDataList.okashiList) { okashi in
            HStack {
                AsyncImage(url: okashi.image) { image in
                    image
                        .resizable()
                        .scaledToFit()
                        .frame(height: 40)
                } placeholder: {
                    ProgressView()
                }
                Text(okashi.name)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
