//
//  ProfileSummary.swift
//  guadalupereporta
//
//  Created by Heberth Deza on 24/06/25.
//

import SwiftUI

struct ProfileSummary: View {
    
    @Environment(ModelData.self)
    var modelData: ModelData
    
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
                
                Divider()
                
                VStack(alignment: .leading) {
                    Text("Completed badges")
                        .font(.headline)
                    
                    ScrollView(.horizontal) {
                        HStack {
                            HikeBadge(name: "First hike")
                            HikeBadge(name: "Earth day")
                                .hueRotation(Angle(degrees: 90))
                            HikeBadge(name: "Tenth hike")
                                .grayscale(0.5)
                                .hueRotation(Angle(degrees: 45))
                        }
                        .padding(.bottom)
                    }
                }
                
                Divider()
                
                
                VStack(alignment: .leading) {
                    Text("Recent hikes")
                        .font(.headline)
                    
                    HikeView(hike: modelData.hikes[0])
                }
            }
        }
    }
}

#Preview {
    ProfileSummary(profile: Profile.default)
        .environment(ModelData())
}
