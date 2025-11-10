//
//  BarraBotones.swift
//  Exercise1
//
//  Created by Mike Jasso on 07/11/25.
//

import SwiftUI

public struct BarraBotones: View {
    @State private var isMuted: Bool = false

    // Contenido a compartir
    private let shareText = "Estoy escuchando esta canción en Exercise1 🎵"
    private let shareURL = URL(string: "https://example.com/mi-cancion") // opcional
    private var shareImage: Image? {
        Image("cover") // si no existe en assets, no se usará
    }

    public var body: some View {
        HStack {
            // Botón de mute/unmute animado
            Button(action: {
                #if os(iOS)
                let generator = UIImpactFeedbackGenerator(style: .light)
                generator.impactOccurred()
                #endif
                withAnimation(.spring(response: 0.25, dampingFraction: 0.8)) {
                    isMuted.toggle()
                }
            }) {
                ZStack {
                    Image(systemName: isMuted ? "speaker.slash.fill" : "speaker.2.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 25)
                        .foregroundColor(.white)
                        .id(isMuted)
                        .transition(.asymmetric(insertion: .scale.combined(with: .opacity),
                                                removal: .opacity))
                }
            }

            Spacer()

            // ShareLink nativo (iOS 16+)
            if let url = shareURL {
                ShareLink(item: url, subject: Text("Exercise1"), message: Text(shareText)) {
                    Image(systemName: "square.and.arrow.up")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 25)
                        .foregroundColor(.white)
                }
            } else {
                ShareLink(item: shareText, subject: Text("Exercise1")) {
                    Image(systemName: "square.and.arrow.up")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 25)
                        .foregroundColor(.white)
                }
            }
        }
        .padding(.horizontal, 48)
    }
}

#Preview {
    BarraBotones()
}
