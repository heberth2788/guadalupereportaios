//
//  LandmarkList.swift
//  guadalupereporta
//
//  Created by Heberth Deza on 25/04/25.
//

import SwiftUI

struct LandmarkList: View {
    
    @State
    private var showFavoritesOnly: Bool = true
    
    var filteredLandmarksData: [Landmark] {
        landmarksData.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationSplitView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Show only favorites")
                }
                ForEach(filteredLandmarksData) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
                
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
        
    }
}

#Preview("List") {
    LandmarkList()
}
