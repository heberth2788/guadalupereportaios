//
//  SwiftUIView.swift
//  guadalupereporta
//
//  Created by Heberth Deza on 11/06/25.
//

import SwiftUI

struct CategoryHome: View {
    
    @Environment(ModelData.self)
    var modelData
    
    @State
    private var showingProfile: Bool = false
    
    var body: some View {
        NavigationSplitView {
            List {
                modelData.features[0].image
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoryName: key, items: self.modelData.categories[key]!)
                }
                .listRowInsets(EdgeInsets())
            }
            .listStyle(.inset)
            .navigationTitle("Featured")
            .toolbar {
                Button {
                    showingProfile.toggle()
                } label: {
                    Label("User profile", systemImage: "person.crop.circle")
                }
            }
            .sheet(isPresented: $showingProfile) {
                ProfileHost()
                    .environment(modelData)
            }
        } detail: {
            Text("Select landmark")
        }
    }
}

#Preview {
    CategoryHome()
        .environment(ModelData())
}
