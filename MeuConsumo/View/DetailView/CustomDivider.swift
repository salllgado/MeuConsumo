//
//  CustomDivider.swift
//  MeuConsumo
//
//  Created by Chrystian on 13/05/20.
//  Copyright © 2020 Salgado Solutions. All rights reserved.
//

import SwiftUI

struct CustomDivider: View {

    let horizontalPadding: CGFloat
    let color: Color

    init(horizontalPadding: CGFloat = 16, color: Color = .gray) {
        self.horizontalPadding = horizontalPadding
        self.color = color
    }

    var body: some View {
        HStack {
            line
        }
    }

    var line: some View {
        VStack { Divider().background(color) }.padding(horizontalPadding)
    }
}
