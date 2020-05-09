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
        NavigationView {
            Text(consume.valor)
                .navigationBarTitle("Abastecimento do dia \(consume.data)", displayMode: .inline)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(Consume(
            litros: "40L",
            valor: "134R$",
            km: "99890KM"
        ))
    }
}
