//
//  Artist.swift
//  MusicBox
//
//  Created by Charlithia Palmer on 8/5/20.
//

import Foundation

struct Artist: Identifiable{
    var id = UUID()
    var name = String()
    var artistCount: Int
    var istopArtist: Bool = false
    
    var imageName: String { return name }
    var thumbnailName: String { return name + "Thumb" }
}

let testData = [
    Artist(name: "2 Chainz", artistCount: 1, istopArtist: false),
    Artist(name: "21 Savage", artistCount: 2, istopArtist: true),
    Artist(name: "Ann Marie", artistCount: 3, istopArtist: false),
    Artist(name: "Asap Rocky", artistCount: 4, istopArtist: true),
    Artist(name: "Big Sean", artistCount: 5, istopArtist: false),
    Artist(name: "Cardi B", artistCount: 6, istopArtist: true),
    Artist(name: "Chance the Rapper", artistCount: 7, istopArtist: false),
    Artist(name: "Chris Brown", artistCount: 8, istopArtist: true),
    Artist(name: "Drake", artistCount: 9, istopArtist: false),
    Artist(name: "Dj Khaled", artistCount: 10, istopArtist: true),

]
