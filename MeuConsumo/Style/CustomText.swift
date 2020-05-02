//
//  CustomText.swift
//  MeuConsumo
//
//  Created by Chrystian on 02/05/20.
//  Copyright © 2020 Salgado Solutions. All rights reserved.
//

import SwiftUI

struct CustomText: View {
    
    private (set) var text: String
    private (set) var textStyle: Font.Weight
    
    init(_ text: String, style: Font.Weight) {
        self.text = text
        self.textStyle = style
    }
    
    var body: some View {
        Text(text)
            .foregroundColor(Color.black)
            .font(Font.system(size: 18, weight: textStyle))
    }
}

struct CustomText_Previews: PreviewProvider {
    static var previews: some View {
        List {
            CustomText("Teste de texto", style: .bold)
            CustomText("Teste de texto semibold", style: .semibold)
        }
    }
}
