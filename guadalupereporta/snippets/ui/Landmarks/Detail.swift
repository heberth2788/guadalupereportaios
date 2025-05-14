//
//  Detail.swift
//  guadalupereporta
//
//  Created by Heberth Deza on 28/04/25.
//

import SwiftUI

struct LandmarkDetail: View {
    
    @Environment(ModelData.self)
    var modelData
    
    var landmark: Landmark
    
    var landmarkIndex: Int {
        modelData.landmarksData.firstIndex(where: { $0.id == landmark.id })!
    }
    
    var body: some View {
        
        @Bindable
        var modelData = modelData
        
        ScrollView {
            MapView(coordinate: landmark.locationCoordinates)
                .frame(height: 200)
            
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                
                Text(landmark.name)
                    .font(.title)
                    .foregroundColor(.blue)
                
                HStack {
                    Text(landmark.park)
                        .font(.subheadline)
                    
                    FavoriteButton(isSetFavorite: $modelData.landmarksData[landmarkIndex].isFavorite)
                    
                    Spacer()
                    
                    Text(landmark.state)
                        .font(Font.subheadline)
                }
                
                Divider()
                
                Text("About \(landmark.name)")
                    .font(.title2)
                
                Text(landmark.description)
            }
            .padding()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    let modelData = ModelData()
    LandmarkDetail(landmark: ModelData().landmarksData[0])
        .environment(modelData)
    
}
