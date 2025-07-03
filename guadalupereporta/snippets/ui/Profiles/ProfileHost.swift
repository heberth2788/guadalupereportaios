//
//  ProfileHost.swift
//  guadalupereporta
//
//  Created by Heberth Deza on 24/06/25.
//

import SwiftUI

struct ProfileHost: View {
    
    @Environment(\.editMode)
    var editMode
    
    @Environment(ModelData.self)
    var modelData
    
    @State
    private var draftProfile = Profile.default
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                Spacer()
                EditButton()
            }
            
            if editMode?.wrappedValue == EditMode.inactive {
                ProfileSummary(profile: modelData.profile)
            } else {
                Text("Profile editor not implemented yet")
                Spacer()
            }
            
        }
        .padding()
    }
}

#Preview {
    ProfileHost()
        .environment(ModelData())
}
