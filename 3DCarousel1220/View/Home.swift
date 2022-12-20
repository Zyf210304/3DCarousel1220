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
        VStack {
            Carousel3D(cardSize: CGSize(width: 150, height: 120), items: cards, id: \.self, content: { card in
                CardView(card: card)
            })
            .padding(.bottom, 100)
            
            HStack {
                Button {
                    if cards.count != 6 {
                        cards.append(.init(imageFile: "image \(cards.count + 1)"))
                    }
                } label: {
                    Label("Add", systemImage: "plus")
                }
                .buttonStyle(.bordered)
                .tint(.blue)

                Button {
                    cards.removeLast()
                } label: {
                    Label("Delete", systemImage: "xmark")
                }
                .buttonStyle(.bordered)
                .tint(.red)
            }
        }
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

struct CardView: View {
    var card: Card
    
    var body: some View {
        
        ZStack {
            Image(card.imageFile)
                .resizable()
                .aspectRatio(contentMode: .fill)
            
            Button("Verify Click") {
                
            }
        }
        .frame(width: 150, height: 220)
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
    }
}
