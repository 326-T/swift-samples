//
//  DataModel.swift
//  ObservedObject
//
//  Created by 竹田恭 on 2023/03/12.
//

import Foundation

class DataModel: ObservableObject {
    @Published var name: String
    @Published var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}
