//
//  ContentView.swift
//  Exercise1
//
//  Created by Mike Jasso on 07/11/25.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .blur(radius: 20)
            VStack(spacing: 40) {
                Spacer()
                SongInfo()
                BarraProgreso()
                Controles()
                Spacer()
                BarraBotones()
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
