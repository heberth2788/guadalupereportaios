//
//  ProfileHost.swift
//  guadalupereporta
//
//  Created by Heberth Deza on 24/06/25.
//

import SwiftUI

struct ProfileHost: View {
    
    @State
    private var draftProfile = Profile.default
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            ProfileSummary(profile: draftProfile)
        }
        .padding()
    }
}

#Preview {
    ProfileHost()
}
