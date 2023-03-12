//
//  AnotherContentView.swift
//  EnvironmentObject
//
//  Created by 竹田恭 on 2023/03/12.
//

import SwiftUI

struct AnotherContentView: View {
    @EnvironmentObject var dataModel: DataModel
    var body: some View {
        Text("AnotherContentView")
        Text("\(dataModel.name)は\(dataModel.age)歳です。")
    }
}
