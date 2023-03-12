//
//  ContentView.swift
//  MyCoreData
//
//  Created by 竹田恭 on 2023/03/12.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) var viewContext
    
    @FetchRequest(sortDescriptors: [])
    var humans: FetchedResults<Human>
    
    @State var name = ""
    
    var body: some View {
        VStack {
            List {
                ForEach(humans) { human in
                    if((human.name?.isEmpty) == false) {
                        HStack {
                            if(human.checked) {
                                Text("☑︎")
                            }
                            else {
                                Text("□")
                            }
                            Button(action: {
                                human.checked.toggle()
                            })
                            {
                                Text(human.name!)
                            }
                        }
                    }
                }
                
                TextField("人間の名前", text: $name)
                    .onSubmit {
                        addHuman(name: name)
                        name = ""
                    }
                
                Button(action: deleteHuman) {
                    Text("人間を減らす")
                }
            }
        }
    }
    
    func addHuman(name: String) {
        let newHuman = Human(context: viewContext)
        newHuman.name = name
        
        do {
            try viewContext.save()
        } catch {
            fatalError("セーブに失敗")
        }
    }
    
    func deleteHuman() {
        for human in humans {
            if (human.checked) {
                viewContext.delete(human)
            }
        }
        
        do {
            try viewContext.save()
        } catch {
            fatalError("セーブに失敗")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
