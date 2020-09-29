//
//  ContentView.swift
//  Shared
//
//  Created by Charlithia Palmer on 8/5/20.
//

import SwiftUI

struct ContentView: View {
  @ObservedObject var store: ArtistStore
    
    var body: some View {
        NavigationView{
            List {
                ForEach(store.artists) { artist in
                ArtistCell(artist: artist)
                }
                .onMove (perform: moveArtists)
                .onDelete (perform: deleteArtists)
                
                HStack {
                    Spacer()
                    Text("\(store.artists.count) Artists")
                        .foregroundColor(.secondary)
                    Spacer()
                }
            }
            .navigationTitle("Billboard 100")
            .toolbar {
                #if os(iOS)
                EditButton()
                    .foregroundColor(.white)
                #endif
                Button("Add", action: makeArtist)
                    .foregroundColor(.white)
                
            }
            
            Text("Select a Artist")
                .font(.largeTitle)
        }
    }
    
    func makeArtist() {
        withAnimation {
            store.artists.append(Artist(name: "2 Chainz", artistCount: 3))
        }
    }
    
    func moveArtists(from: IndexSet, to: Int) {
        withAnimation {
            store.artists.move(fromOffsets: from, toOffset: to)
        }
    }
    
    func deleteArtists(offsets: IndexSet) {
        withAnimation{
            store.artists.remove(atOffsets: offsets)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView(store: testStore)
                .preferredColorScheme(.dark)
           
       
        }
    }
}

struct ArtistCell: View {
    var artist: Artist
    
    var body: some View {
        NavigationLink(destination: ArtistDetail(artist: artist)) {
            Image(artist.name)
                .imageScale(.small)
                .scaledToFit()
                .frame(width: 109.0, height: 109.5)
                .aspectRatio(contentMode: .fit)
                .cornerRadius(8)
            
            
            VStack(alignment: .leading) {
                Text(artist.name)
                Text("\(artist.artistCount) on the charts")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}
