//
//  CustomPrimaryButton.swift
//  MeuConsumo
//
//  Created by Chrystian on 06/05/20.
//  Copyright © 2020 Salgado Solutions. All rights reserved.
//

import SwiftUI

struct CustomPrimaryButton: View {
    
    var buttonText: String = "Action"
    var action: () -> Void
    
    var body: some View {
        Button(action: action, label: {
            HStack {
                Spacer()
                Text(buttonText)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .padding(.vertical, 12)
                Spacer()
            }
            .background(Color.goldColor)
            .cornerRadius(32)
        })
    }
}

struct CustomPrimaryButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomPrimaryButton(action: {
            
        })
    }
}
