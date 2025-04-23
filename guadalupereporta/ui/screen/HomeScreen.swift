//
//  HomeScreen.swift
//  guadalupereporta
//
//  Created by Heberth Deza on 22/04/25.
//

import SwiftUI
import Foundation

struct Employee: Identifiable, Hashable {
    let id = UUID()
}

struct HomeScreen: View {
    
    @State
    private var employeeIds: Set<Employee.ID> = []
    
    var body: some View {
        
        NavigationSplitView {
            List {
                Text("Option 1")
                Text("Option 2")
            }
            .navigationBarTitle("Home")
        } content: {
            Text("Option 3")
        }
        detail:  {
            Text("Option 4")
        }
        
//        TabView {
//            Tab("Inicio", systemImage: "house.fill") {
//                Text("Inicio")
//            }
//            Tab("Lista", systemImage: "list.bullet") {
//                Text("Lista")
//            }
//        }
    }
}

#Preview {
    HomeScreen()
}
