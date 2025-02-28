//
//  SwiftDataProjectApp.swift
//  SwiftDataProject
//
//  Created by Shashank B on 25/02/25.
//

import SwiftUI
import SwiftData

@main
struct SwiftDataProjectApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for:User.self)
    }
}
