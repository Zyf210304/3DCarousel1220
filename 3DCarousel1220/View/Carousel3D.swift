//
//  Carousel3D.swift
//  3DCarousel1220
//
//  Created by 张亚飞 on 2022/12/20.
//

import SwiftUI

struct Carousel3D<Content: View, ID, Item>: View where Item: RandomAccessCollection, Item.Element : Identifiable, Item.Element: Equatable, ID: Hashable{
    
    var cardSize: CGSize
    var items: Item
    var id: KeyPath<Item.Element, ID>
    var content: (Item.Element) -> Content
    
    var hostingViews: [UIView] = []
    
    init(cardSize: CGSize, items: Item, id: KeyPath<Item.Element, ID>, @ViewBuilder content: @escaping (Item.Element) -> Content) {
        self.cardSize = cardSize
        self.items = items
        self.id = id
        self.content = content
        
        for item in items {
            let hostingView = convertToUIView(item: item).view!
            hostingViews.append(hostingView)
        }
    }
    
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
    
    func convertToUIView(item: Item.Element) -> UIHostingController<Content> {
        let hostingView = UIHostingController(rootView: content(item))
        hostingView.view.frame.origin = .init(x: cardSize.width / 2, y: cardSize.height / 2)
        hostingView.view.backgroundColor = .red
        
        return hostingView
    }
}

struct Carousel3D_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
