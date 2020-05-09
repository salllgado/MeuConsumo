//
//  NavigationBarButton.swift
//  MeuConsumo
//
//  Created by Chrystian on 06/05/20.
//  Copyright © 2020 Salgado Solutions. All rights reserved.
//

import SwiftUI

struct NavigationBarButton: View {
    
    var text: String = "Button"
    var action: ()->Void
    
    var body: some View {
        Button(action: action, label: {
            Text(text)
                .fontWeight(.bold)
                .foregroundColor(Color.goldColor)
        })
    }
}

struct NavigationBarButton_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarButton(text: "Pressione", action: {})
    }
}
