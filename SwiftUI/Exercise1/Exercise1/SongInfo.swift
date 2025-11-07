//
//  SongInfo.swift
//  Exercise1
//
//  Created by Mike Jasso on 07/11/25.
//

import SwiftUI

public struct SongInfo: View {
    public var body: some View {
        Image("cover")
            .resizable()
            .scaledToFill()
            .frame(width: 250, height: 250)
            .cornerRadius(16)
            .shadow(color: .white.opacity(0.15), radius: 40, x: 0, y: 10)
            .shadow(color: .black.opacity(0.5), radius: 20, x: 0, y: 15)
            .padding(.bottom, 15)
        
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
