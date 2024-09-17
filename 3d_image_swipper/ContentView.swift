//
//  ContentView.swift
//  3d_image_swipper
//
//  Created by Abdal Shah on 17/09/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedIndex = 0
    let images: [ImageResource] = [.img1, .img2, .img3, .img4, .img5]
    let colors: [Color] = [.orange, .red , .blue , .cyan , .red , Color(.label) , .blue]
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
