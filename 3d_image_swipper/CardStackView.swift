//
//  CardStackView.swift
//  3d_image_swipper
//
//  Created by Abdal Shah on 17/09/2024.
//

import SwiftUI

struct Item: Identifiable {
    let id: Int
    let image: ImageResource
    let offSset: CGFloat = 0.0
    let zIndex: Double
    
    
}


struct CardStackView: View {
    @State private var selectedIndex = 0
    @Binding private var selectedCardIndex: Int
    @State private var item: [Item]
    let imageSize: CGSize
    let maximumOffset: CGFloat
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    CardStackView()
}
