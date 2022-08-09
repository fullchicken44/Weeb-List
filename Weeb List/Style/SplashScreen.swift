//
//  SplashScreen.swift
//  Weeb List
//
//  Created by Le Anh Quan on 03/08/2022.
//

import SwiftUI

struct SplashScreen: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        // Once the splash screen finish the duration, switch to the main view
        if isActive {
            ContentView()
        } else {
            VStack {
                VStack {
                    Image("logo")
                        .resizable()
                        .frame(width: 200, height: 200)
                    Text("Animu List")
                        .font(.largeTitle)
                        .bold()
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear() { // Animation for the logo
                    withAnimation(.easeIn(duration: 2.0)) {
                        self.size = 1.0
                        self.opacity = 1.0
                    }
                }
            }
            .preferredColorScheme(.light)
            .onAppear { // set the delay for the splash screen, it will end after 3 seconds
                DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                    self.isActive = true
                }
            }
        }
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
