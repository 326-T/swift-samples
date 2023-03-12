//
//  DataModel.swift
//  EnvironmentObject
//
//  Created by 竹田恭 on 2023/03/12.
//

import SwiftUI

class DataModel: ObservableObject {
    @Published var name = "武田"
    @Published var age = 20
}
