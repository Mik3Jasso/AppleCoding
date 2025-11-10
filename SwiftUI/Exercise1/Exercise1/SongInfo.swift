//
//  SongInfo.swift
//  Exercise1
//
//  Created by Mike Jasso on 07/11/25.
//

import SwiftUI

public struct SongInfo: View {
    @State private var imageScale: CGFloat = 1.0

    public var body: some View {
        VStack {
            Image("cover")
                .resizable()
                .scaledToFill()
                .frame(width: 250, height: 250)
                .cornerRadius(16)
                .shadow(color: .white.opacity(0.15), radius: 40, x: 0, y: 10)
                .shadow(color: .black.opacity(0.5), radius: 20, x: 0, y: 15)
                .padding(.bottom, 15)
                .scaleEffect(imageScale)
                .onTapGesture {
                    // Animación de rebote: sube y regresa con un spring
                    withAnimation(.spring(response: 0.25, dampingFraction: 0.45, blendDuration: 0.1)) {
                        imageScale = 1.08
                    }
                    // Regresar al tamaño original con un ligero retraso para que se sienta el bounce
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.12) {
                        withAnimation(.spring(response: 0.35, dampingFraction: 0.65, blendDuration: 0.1)) {
                            imageScale = 1.0
                        }
                    }
                }

            VStack(alignment: .center, spacing: 10) {
                Text("Title of the song")
                    .font(.title)
                    .bold()
                    .foregroundStyle(.white)
                Text("Artist Name")
                    .font(.caption)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity, alignment: .center)
            }
        }
    }
}

#Preview {
    SongInfo()
}
