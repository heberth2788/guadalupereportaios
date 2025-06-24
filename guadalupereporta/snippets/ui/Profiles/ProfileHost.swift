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
        Text("Profile for: \(draftProfile.username)")
    }
}

#Preview {
    ProfileHost()
}
