//
//  BackgroundView.swift
//  music
//
//  Created by 竹田 恭 on 2022/10/30.
//

import SwiftUI

struct BackgroundView: View {
    let imageName: String
    var body: some View {
        Image(imageName)
            .resizable()
            .ignoresSafeArea()
            .scaledToFill()
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView(imageName: "background")
    }
}
