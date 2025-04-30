//
//  LandmarkRow.swift
//  guadalupereporta
//
//  Created by Heberth Deza on 25/04/25.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)
            }
        }
    }
}

#Preview("Rock") {
    LandmarkRow(landmark: landmarksData[0])
}

#Preview("Salmon") {
    LandmarkRow(landmark: landmarksData[1])
}


#Preview("Group") {
    Group {
        ForEach(0 ..< 12) { index in
            LandmarkRow(landmark: landmarksData[index])
        }
    }
}
