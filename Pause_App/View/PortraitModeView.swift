//
//  PortraitModeView.swift
//  Pause_App
//
//  Created by MIKHAIL ZHACHKO on 10.11.23.
//

import SwiftUI

struct PortraitModeView: View {
    
    @Binding var language: String
    
    var body: some View {
        ZStack (alignment: .top){
            BackgroundView()
            VStack(alignment: .center){
                HStack{
                    Spacer()
                    LanguageOptionsView(language: $language)
                }
                .padding()
                Spacer()
                ZStack{
                    ImageView(imageWidth: imageWidthIPhone, imageHeight: imageHeightIPhone)
                    TextView()
                }
                Spacer()
                Spacer()
            }
            
            
        }
    }
}

#Preview {
    PortraitModeView(language: .constant("en"))
}
