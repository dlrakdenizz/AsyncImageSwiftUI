//
//  ContentView.swift
//  AsyncImageSwiftUI
//
//  Created by Dilara Akdeniz on 28.09.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            
            AsyncImage(url: URL(string:"https://upload.wikimedia.org/wikipedia/commons/7/74/Earth_poster_large.jpg")!) { image in
                image.resizable().frame(width: 300, height: 300, alignment: .center)
            } placeholder: {
                ProgressView()
            }

            
            List(superHeroArray) { superhero in
                Text(superhero.name)
                    .font(.title3)
                    .foregroundStyle(Color.blue)
                
            }.navigationTitle(Text("Superhero Book"))
        }
    }
}

#Preview {
    ContentView()
}
