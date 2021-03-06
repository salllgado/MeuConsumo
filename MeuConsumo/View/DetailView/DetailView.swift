//
//  DetailView.swift
//  MeuConsumo
//
//  Created by Chrystian on 02/05/20.
//  Copyright © 2020 Salgado Solutions. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    
    private let consume: Consume
    
    init(_ consume: Consume) {
        self.consume = consume
    }
    
    var body: some View {
        VStack {
            RowView(title: "Valor", value: "R$\(consume.valor)")
            RowView(title: "Litros", value: "\(consume.litros)L")
            RowView(title: "Data do registro", value: consume.date)
            Spacer()
        }
        .navigationBarTitle("Abastecimento do dia \(consume.date)", displayMode: .inline)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(Consume(
            litros: "40",
            valor: "134",
            km: "99890"
        ))
    }
}
