//
//  LandscapeModeView.swift
//  Pause_App
//
//  Created by MIKHAIL ZHACHKO on 10.11.23.
//

import SwiftUI

struct LandscapeModeView: View {
    
    @Binding var language: String
    
    var body: some View {
        ZStack (alignment: .top){
            BackgroundView()
            VStack(alignment: .center){
                HStack{
                    Spacer()
                    LanguageOptionsView(language: $language)
                }
                .padding(40)
                Spacer()
                ZStack{
                    ImageView(imageWidth: imageWidthIPad, imageHeight: imageHeightIPad)
                }
                Spacer()
                Spacer()
            }
            
            
        }
    }
}

#Preview {
    LandscapeModeView(language: .constant("en"))
}
