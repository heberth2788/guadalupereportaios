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
    
    var body: some View {
        NavigationSplitView {
            List {
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    Text(key)
                }
            }
            .navigationTitle("Featured")
        } detail: {
            Text("Select landmark")
        }
    }
}

#Preview {
    CategoryHome()
        .environment(ModelData())
}
