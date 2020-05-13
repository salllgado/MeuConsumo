//
//  DetailRowView.swift
//  MeuConsumo
//
//  Created by Chrystian on 13/05/20.
//  Copyright © 2020 Salgado Solutions. All rights reserved.
//

import Foundation
import SwiftUI

extension DetailView {
    
    struct RowView: View {
        
        let title: String
        let value: String
        
        init(title: String, value: String) {
            self.title = title
            self.value = value
        }
        
        var body: some View {
            VStack(alignment: .leading) {
                VStack(alignment: .leading) {
                    Text(title)
                        .foregroundColor(Color.black)
                        .font(Font.system(size: 26, weight: .bold))
                    Text(value)
                        .foregroundColor(Color.black)
                        .font(Font.system(size: 22, weight: .semibold))
                }
                .padding(EdgeInsets(top: 6, leading: 20, bottom: -5, trailing: 20))
                CustomDivider(color: .white)
            }
        }
    }
}
