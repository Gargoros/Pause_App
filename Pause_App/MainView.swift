//
//  ContentView.swift
//  Pause_App
//
//  Created by MIKHAIL ZHACHKO on 10.11.23.
//

import SwiftUI

struct MainView: View {
    
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    @Binding var language: String
    
    var isPhone: Bool {
            horizontalSizeClass == .compact && verticalSizeClass == .regular
        }
    var isIPad: Bool {
            horizontalSizeClass == .regular && verticalSizeClass == .regular
        }
    
    var body: some View {
        if isPhone{
            PortraitModeView(language: $language)
        }
        else{
            LandscapeModeView(language: $language)
        }
        
    }
}

#Preview {
    MainView(language: .constant("en"))
}
