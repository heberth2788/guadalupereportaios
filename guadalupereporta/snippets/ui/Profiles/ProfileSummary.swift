//
//  ProfileSummary.swift
//  guadalupereporta
//
//  Created by Heberth Deza on 24/06/25.
//

import SwiftUI

struct ProfileSummary: View {
    
    var profile: Profile
    
    var body: some View {
        
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text(profile.username)
                    .bold()
                    .font(.title)
                
                Text("Notifications: \(profile.prefersNotifications ? "On" : "Off")")
                Text("Seasonal photos: \(profile.seasonalPhoto.rawValue)")
                Text("Goal date: ") + Text(profile.goalDate, style: .date)
            }
        }
    }
}

#Preview {
    ProfileSummary(profile: Profile.default)
}
