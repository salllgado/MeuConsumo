//
//  ColorExtension.swift
//  MeuConsumo
//
//  Created by Chrystian on 03/05/20.
//  Copyright © 2020 Salgado Solutions. All rights reserved.
//

import SwiftUI

extension Color {
    
    static var backgroundColor = Color(UIColor(named: "BackgroundColor") ?? .white)
    
    static var darkBlueColor = Color(UIColor(named: "DarkBlueColor") ?? .black)
}

struct ColorExtension_Previews: PreviewProvider {
    static var previews: some View {
        List {
            Button(action: {
                // ...
            }, label: {
                Text("Some")
            })
                .background(Color.backgroundColor)
        }
    }
}
