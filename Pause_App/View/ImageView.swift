//
//  ImageView.swift
//  Pause_App
//
//  Created by MIKHAIL ZHACHKO on 10.11.23.
//

import SwiftUI

struct ImageView: View {
    
    let imageWidth: CGFloat
    let imageHeight: CGFloat
    
    var body: some View {
        Image(imageName)
            .resizable()
            .frame(width: imageWidth, height: imageHeight)
            .clipShape(Circle())
    }
}

#Preview {
    ImageView(imageWidth: 450, imageHeight: 450)
}
