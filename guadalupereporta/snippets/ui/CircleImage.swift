//
//  CircleImage.swift
//  guadalupereporta
//
//  Created by Heberth Deza on 24/04/25.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay(alignment: .center) {
                Circle().stroke(.white, lineWidth: 3)
            }
            .shadow(radius: 6)
    }
}

#Preview {
    CircleImage(image: Image("basquetball"))
}
