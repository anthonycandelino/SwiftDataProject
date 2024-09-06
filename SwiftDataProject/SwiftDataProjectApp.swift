//
//  SwiftDataProjectApp.swift
//  SwiftDataProject
//
//  Created by Anthony Candelino on 2024-08-31.
//

import SwiftUI

@main
struct SwiftDataProjectApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: User.self)
        // don't need modelContainer for Job since User is linked (relies on) Job so SwiftUI handles it for us
    }
}
