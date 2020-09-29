//
//  MusicBoxApp.swift
//  Shared
//
//  Created by Charlithia Palmer on 8/5/20.
//

import SwiftUI

@main
struct MusicBoxApp: App {
    @StateObject private var store = ArtistStore()
    
    var body: some Scene {
        WindowGroup {
            ContentView(store: store)
        }
    }
}

