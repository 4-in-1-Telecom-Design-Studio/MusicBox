//
//  ArtistDetail.swift
//  MusicBox
//
//  Created by Charlithia Palmer on 8/5/20.
//

import SwiftUI

struct ArtistDetail: View {
    var artist: Artist
    @State private var zoomed = true

    var body: some View {
        VStack {
            Spacer(minLength: 0)
            Image(artist.imageName)
                .resizable()
                
                // Zoomed Toggle
                .aspectRatio(contentMode: zoomed ? .fit: .fill)
                .onTapGesture {
                    withAnimation { zoomed.toggle() }
            }
            Spacer(minLength: 0)
            
            if artist.istopArtist && !zoomed {
            HStack {
                Spacer()
                Label("Top Artist", systemImage: "music.mic")
                Spacer()
                    
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .font(Font.headline.smallCaps())
            .background(Color.black)
            .foregroundColor(.white)
            .transition(.move(edge: .bottom))
            }
        }
        .navigationTitle(artist.name)
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct ArtistDetail_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NavigationView {
                ArtistDetail(artist: testData[0])
            }
            NavigationView {
                ArtistDetail(artist: testData[1])
            }
        }
    }
}
