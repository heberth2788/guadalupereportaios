//
//  CategoryItem.swift
//  guadalupereporta
//
//  Created by Heberth Deza on 13/06/25.
//

import SwiftUI

struct CategoryItem: View {
    var landmark: Landmark

        var body: some View {
            VStack(alignment: .leading) {
                landmark.image
                    .resizable()
                    .frame(width: 155, height: 155)
                    .cornerRadius(5)
                Text(landmark.name)
                    .font(.caption)
            }
            .padding(.leading, 15)
        }
}

#Preview {
    CategoryItem(landmark: ModelData().landmarksData[0])
}
