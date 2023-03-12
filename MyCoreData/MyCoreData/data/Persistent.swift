//
//  Persistent.swift
//  MyCoreData
//
//  Created by 竹田恭 on 2023/03/12.
//

import CoreData

struct PersistenceController {
    let container: NSPersistentContainer
    
    init() {
        container = NSPersistentContainer(name: "MyCoreData")
        
        container.loadPersistentStores(completionHandler: { (storeDescription, error ) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error)")
            }
        })
    }
}
