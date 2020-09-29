//
//  ArtistStore.swift
//  MusicBox
//
//  Created by Charlithia Palmer on 8/5/20.
//

import Foundation

class ArtistStore: ObservableObject {
    @Published var artists: [Artist]
    
    init(artists: [Artist] = []) {
        self.artists = artists
    }
}

let testStore = ArtistStore(artists: testData)
