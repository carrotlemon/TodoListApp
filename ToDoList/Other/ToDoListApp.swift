//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Trevor Kim on 10/29/24.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
