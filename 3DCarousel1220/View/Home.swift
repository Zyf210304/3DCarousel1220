//
//  Home.swift
//  3DCarousel1220
//
//  Created by 张亚飞 on 2022/12/20.
//

import SwiftUI 

struct Home: View {
    @State var cards: [Card] = []
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .onAppear {
                for  index in 1...6 {
                    cards.append(.init(imageFile: "image \(index)"))
                }
            }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
