//
//  Landmarks.swift
//  guadalupereporta
//
//  Created by Heberth Deza on 23/04/25.
//

import SwiftUI

struct Landmarks: View {
    
    var body: some View {
        VStack {
            MapView()
                .frame(height: 200)
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text("Basquetball")
                    .font(.title)
                    .foregroundColor(.blue)
                HStack {
                    Text("Peace Park")
                        .font(.subheadline)
                    Spacer()
                    Text("Guadalupe")
                        .font(Font.subheadline)
                }
                Divider()
                Text("Best place to practice sports")
                    .font(.title2)
                Text("Lorem ipson dolor sit amet.")
            }
            .padding()
        }
        Spacer()
    }
}

#Preview {
    Landmarks()
}
