//
//  ConsumeListViewCell.swift
//  MeuConsumo
//
//  Created by Chrystian on 02/05/20.
//  Copyright © 2020 Salgado Solutions. All rights reserved.
//

import SwiftUI

struct ConsumeListViewCell: View {
    
    private let consume: Consume
    
    init(_ consume: Consume) {
        self.consume = consume
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            CustomText(consume.data, style: .black)
                .padding(
                    EdgeInsets(top: 0, leading: 0, bottom: 4, trailing: 0)
            )
            HStack {
                Text("Litros")
                    .foregroundColor(Color.black)
                    .font(Font.system(size: 14, weight: .medium))
                CustomText("\(consume.litros)L", style: .bold)
            }
            HStack {
                Text("Kilometragem")
                    .foregroundColor(Color.black)
                    .font(Font.system(size: 14, weight: .medium))
                CustomText("\(consume.km)km", style: .bold)
            }
        }
    }
    
    
}

struct ConsumeListViewCell_Previews: PreviewProvider {
    static var previews: some View {
        ConsumeListViewCell(
            Consume(
                litros: "40L",
                valor: "134R$",
                km: "99890KM"
            )
        )
    }
}
