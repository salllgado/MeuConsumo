//
//  ConsumeListTextField.swift
//  MeuConsumo
//
//  Created by Chrystian on 23/05/20.
//  Copyright © 2020 Salgado Solutions. All rights reserved.
//

import Foundation
import SwiftUI

struct ConsumeListTextField: View {
    
    var text: Binding<String>
    let placeholder: String
    let keyboardType: UIKeyboardType
    
    init(text: Binding<String>, placeholder: String, keyboardType: UIKeyboardType) {
        self.text = text
        self.placeholder = placeholder
        self.keyboardType = keyboardType
    }
    
    var body: some View {
        TextField(placeholder, text: text)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .keyboardType(keyboardType)
            .padding(.bottom, 16)
    }
}

//struct ConsumeListTextField_Previews: PreviewProvider {
//    
//    @State var vm = ViewModel()
//    
//    static var previews: some View {
//        
//        ConsumeListTextField(text: vm.$someText, placeholder: "Placeholder baby", keyboardType: .default)
//    }
//    
//    struct ViewModel {
//        
//        @State var someText = "Text"
//    }
//}
