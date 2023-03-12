//
//  MyCoreDataApp.swift
//  MyCoreData
//
//  Created by 竹田恭 on 2023/03/12.
//

import SwiftUI

@main
struct MyCoreDataApp: App {
    let persistenceController = PersistenceController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
