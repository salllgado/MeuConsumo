//
//  ConsumeListView.swift
//  MeuConsumo
//
//  Created by Chrystian on 02/05/20.
//  Copyright © 2020 Salgado Solutions. All rights reserved.
//

import SwiftUI

struct ConsumeListView: View {
    
    @ObservedObject var viewModel: ConsumeListViewModel
    
    init(vm: ConsumeListViewModel = ConsumeListViewModel()) {
        viewModel = vm
    }
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    NavigationLink(destination: DetailView(getFakeConsume())) {
                        ConsumeListViewCell(getFakeConsume())
                    }
                    
                }
            }
            .navigationBarTitle("Meu Consumo")
            .navigationBarItems(trailing: Button(
                action: {
                    print("Edit button pressed...")
            }) {
                Text("Adicionar")
            })
        }
    }
    
    private func getFakeConsume() -> Consume {
        return Consume(
            litros: "40L",
            valor: "134R$",
            km: "99890KM"
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ConsumeListView()
    }
}
