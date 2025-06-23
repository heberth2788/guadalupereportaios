//
//  Profile.swift
//  guadalupereporta
//
//  Created by Heberth Deza on 23/06/25.
//

import Foundation

struct Profile {
    var username: String
    var prefersNotifications: Bool = true
    var seasonalPhoto: Season = Season.winter
    var goalDate: Date = Date()
    
    // 'default' is a reserved keyword, however, when we need to use it as
    // identifier, we need to enclose it with ``(backticks) characters.
    static let `default` = Profile(username: "g_kumar")
    
    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"
        
        var id: String { rawValue }
    }
}
