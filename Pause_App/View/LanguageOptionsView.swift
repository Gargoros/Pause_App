//
//  LanguageOptionsView.swift
//  Pause_App
//
//  Created by MIKHAIL ZHACHKO on 10.11.23.
//

import SwiftUI

struct LanguageOptionsView: View {
    
    @Binding var language: String
    
    var body: some View {
        Menu {
            Button(LocalizedStringKey("English")) {
                language = "en"
            }
            Button(LocalizedStringKey("Russian")) {
                language = "ru"
            }
            Button(LocalizedStringKey("Polish")) {
                language = "pl"
            }
            Button(LocalizedStringKey("Belarusian")) {
                language = "be"
            }
        }label: {
            Image(systemName: "globe")
                            .font(.system(size: 20))
                            .foregroundColor(.black)
        }
    }
}

#Preview {
    LanguageOptionsView(
        language: .constant("en"))
}
