//
//  SwiftUIView.swift
//  3DCarousel1220
//
//  Created by 张亚飞 on 2022/12/20.
//

import SwiftUI

struct Card: Identifiable, Equatable {
    var id: String = UUID().uuidString
    var imageFile: String
}
