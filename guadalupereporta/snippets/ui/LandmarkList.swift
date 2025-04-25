//
//  LandmarkList.swift
//  guadalupereporta
//
//  Created by Heberth Deza on 25/04/25.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
//        List {
//            LandmarkRow(landmark: landmarksData[0])
//            LandmarkRow(landmark: landmarksData[1])
//            LandmarkRow(landmark: landmarksData[2])
//        }
        
        List(landmarksData) { landmark in
            LandmarkRow(landmark: landmark)
        }
    }
}

#Preview("List") {
    LandmarkList()
}
