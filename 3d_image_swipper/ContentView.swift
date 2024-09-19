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
       
        ZStack {
            Color(colors[4]).opacity(0.85).ignoresSafeArea()
            VStack {
                Spacer()
                Text("Explore the anime world now ").multilineTextAlignment(.center).font(.largeTitle).bold().padding(.horizontal)
                Spacer()
                CardStackView(images: images,selectedCardIndex: $selectedIndex, imageSize:  CGSize(width: 340, height: 500))
                Spacer()
            }.padding()
        }
       
       
    }
}

#Preview {
    ContentView()
}
