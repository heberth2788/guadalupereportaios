//
//  Item.swift
//  guadalupereporta
//
//  Created by Heberth Deza on 9/04/25.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
