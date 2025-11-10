//
//  BarraProgreso.swift
//  Exercise1
//
//  Created by Mike Jasso on 07/11/25.
//

import SwiftUI

struct BarraProgreso: View {
    // Progreso entre 0.0 y 1.0
    @State private var progress: Double = 0.4

    var body: some View {
        // Barra de progreso
        VStack(spacing: 10) {
            Slider(value: $progress, in: 0...1)
            HStack {
                // Estos textos ahora podrían actualizarse según progress si defines una duración total.
                Text("1:15")
                    .font(.caption)
                    .foregroundColor(.white)
                Spacer()
                Text("-2:45")
                    .font(.caption)
                    .foregroundColor(.white)
            }
        }
        .padding(.horizontal, 48)
    }
}

#Preview {
    BarraProgreso()
}
