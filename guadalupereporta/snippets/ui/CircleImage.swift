//
//  CircleImage.swift
//  guadalupereporta
//
//  Created by Heberth Deza on 24/04/25.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("basquetball")
            .clipShape(Circle())
            .overlay(alignment: .center) {
                Circle().stroke(.white, lineWidth: 3)
            }
            .shadow(radius: 6)
    }
}

#Preview {
    CircleImage()
}
