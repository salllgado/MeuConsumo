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
                List(self.viewModel.consumes) { consume in
                    NavigationLink(destination: DetailView(consume)) {
                        ConsumeListViewCell(consume)
                    }
                }
            }
            .navigationBarTitle("Meu Consumo")
            .navigationBarItems(trailing: NavigationBarButton(text: "Adicionar", action: {
                self.viewModel.isPresentingAddModal.toggle()
            }))
        }
        .accentColor(Color.goldColor)
        .sheet(isPresented: $viewModel.isPresentingAddModal, content: {
            InsertionView(vm: self.viewModel)
        })
        .onAppear {
            self.viewModel.fetchList()
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
