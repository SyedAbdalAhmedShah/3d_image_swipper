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
    @State private var items: [Item]
    let imageSize: CGSize
    let maximumOffset: CGFloat
    
    init(images: [ImageResource], selectedCardIndex: Binding<Int>? = nil , imageSize: CGSize = CGSize(width: 100, height: 100)) {
       var createdItems = [Item]()
        for (id, image) in images.enumerated() {
            createdItems.append(Item(id: id, image: image, zIndex: Double(images.count - 1 - id ))
                                )}
            self._selectedCardIndex = selectedCardIndex ?? .constant(0)
            self.items = createdItems
        self.imageSize = imageSize
        self.maximumOffset = imageSize.width * 0.75
    }
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    CardStackView()
}
