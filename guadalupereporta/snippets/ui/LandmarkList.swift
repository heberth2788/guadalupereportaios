//
//  LandmarkList.swift
//  guadalupereporta
//
//  Created by Heberth Deza on 25/04/25.
//

import SwiftUI

struct LandmarkList: View {
    
    @Environment(ModelData.self)
    var modelData
    
    @State
    private var showFavoritesOnly: Bool = false
    
    var filteredLandmarksData: [Landmark] {
        modelData.landmarksData.filter { landmark in
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
            .animation(.default, value: filteredLandmarksData)
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
        
    }
}

#Preview("List") {
    LandmarkList()
        .environment(ModelData())
}
