//
//  BackGraundColorView.swift
//  Pause_App
//
//  Created by MIKHAIL ZHACHKO on 10.11.23.
// background

import SwiftUI

struct BackgroundView: View {
    
    var colorArray: Array<Color> = [
        .myGray, .myBlue, .myWhite
    ]
    
    var body: some View {
        VStack {
            LinearGradient(colors: colorArray, startPoint: .topTrailing, endPoint: .bottomLeading)
                .opacity(0.9)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    BackgroundView()
}
