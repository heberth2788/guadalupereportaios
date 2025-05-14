//
//  FavoriteButton.swift
//  guadalupereporta
//
//  Created by Heberth Deza on 14/05/25.
//

import SwiftUI

struct FavoriteButton: View {
    
    @Binding
    var isSetFavorite: Bool
    
    var body: some View {
        Button {
            isSetFavorite.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSetFavorite ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundStyle(isSetFavorite ? .yellow : .gray)
        }
    }
}

#Preview {
    FavoriteButton(isSetFavorite: .constant(true))
}
