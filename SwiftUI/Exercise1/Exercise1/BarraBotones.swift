//
//  BarraBotones.swift
//  Exercise1
//
//  Created by Mike Jasso on 07/11/25.
//

import SwiftUI

public struct BarraBotones: View {
    public var body: some View {
        HStack {
            Button(action: {}) {
                Image(systemName: "speaker.2.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 25)
                    .foregroundColor(.white)
            }
            Spacer()
            Button(action: {}) {
                Image(systemName: "square.and.arrow.up")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 25)
                    .foregroundColor(.white)
            }
        }
        .padding(.horizontal, 48)    }
}

#Preview {
    BarraBotones()
}
