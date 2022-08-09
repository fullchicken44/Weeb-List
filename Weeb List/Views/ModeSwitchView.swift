//
//  ModeSwitchView.swift
//  Weeb List
//
//  Created by Le Anh Quan on 03/08/2022.
//

import SwiftUI

struct ModeSwitchView: View {
    // Use picker to switch between dark and light mode
    @AppStorage("isDarkMode") private var isDarkMode = false
    
    var body: some View {
        VStack {
            Spacer()
            if isDarkMode {
                Image(systemName: "moon.fill")
                    .resizable()
                    .padding()
                    .frame(width: 200, height: 200)
            } else {
                Image(systemName: "sun.max")
                    .resizable()
                    .padding()
                    .frame(width: 200, height: 200)
            }
            Spacer()
            Picker("Mode", selection: $isDarkMode) {
                Text("Light").tag(false)
                Text("Dark").tag(true)
            }.pickerStyle(SegmentedPickerStyle())
                .padding()
            Spacer()
        }
       .preferredColorScheme(isDarkMode ? .dark: .light)
    }
}

struct ModeSwitchView_Previews: PreviewProvider {
    static var previews: some View {
        ModeSwitchView()
    }
}
