//
//  OkashiViewModel.swift
//  Okashi
//
//  Created by 竹田恭 on 2023/03/03.
//

import Foundation

@MainActor
class OkashiViewModel: ObservableObject {
    @Published var model: OkashiModel
    
    init(model: OkashiModel) {
        self.model = model
    }
}
