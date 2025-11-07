//
//  Controles.swift
//  Exercise1
//
//  Created by Mike Jasso on 07/11/25.
//

import SwiftUI

struct Controles: View {
    var body: some View {
        // Controles
        HStack(spacing: 60) {
            Button(action: {}) {
                Image(systemName: "chevron.backward")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 40)
                    .foregroundColor(.white)
            }
            Button(action: {}) {
                Image(systemName: "play.circle.fill")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .foregroundColor(.white)
            }
            Button(action: {}) {
                Image(systemName: "chevron.forward")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 40)
                    .foregroundColor(.white)
            }
        }
    }
}

#Preview {
    Controles()
}
