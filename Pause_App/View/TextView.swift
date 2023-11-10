//
//  TextView.swift
//  Pause_App
//
//  Created by MIKHAIL ZHACHKO on 10.11.23.
//

import SwiftUI

struct TextView: View {
    
    @State private var isTapped: Bool = false
    let pauseText: LocalizedStringKey = "Play"
    let playText: LocalizedStringKey = "Pause"
    
    var body: some View {
        Text(
            isTapped ? pauseText : playText
        )
            .font(.title)
            .foregroundStyle(.myWhite)
            .fontWeight(.medium)
            .padding(18)
            .background(.myGray)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .onTapGesture {
                withAnimation(){
                    isTapped.toggle()
                }
            }
    }
}

#Preview {
    TextView()
}
