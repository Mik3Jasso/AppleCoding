//
//  BarraProgreso.swift
//  Exercise1
//
//  Created by Mike Jasso on 07/11/25.
//

import SwiftUI

struct BarraProgreso: View {
    var body: some View {
        // Barra de progreso
                        VStack(spacing: 10) {
                            Slider(value: .constant(0.4))
                            HStack {
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
