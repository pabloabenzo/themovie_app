//
//  NowPlayingView.swift
//  themovieapp
//
//  Created by Pablo Benzo on 23/08/2024.
//

import SwiftUI

struct NowPlayingView: View {
    var body: some View {
        Rectangle()
            .foregroundColor(.yellow)
            .frame(width: 450, height: 700, alignment: .center)
            .ignoresSafeArea()
    }
}

#Preview {
    NowPlayingView()
}
