//
//  SnippetsApp.swift
//  guadalupereporta
//
//  Created by Heberth Deza on 23/04/25.
//

import SwiftUI

@main
struct SnippetsApp: App {
    
    @State
    private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            Landmarks()
                .environment(modelData)
        }
    }
}
