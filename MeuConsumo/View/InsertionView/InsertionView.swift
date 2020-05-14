//
//  InsertionView.swift
//  MeuConsumo
//
//  Created by Chrystian on 03/05/20.
//  Copyright © 2020 Salgado Solutions. All rights reserved.
//

import SwiftUI

struct InsertionView: View {
    
    @ObservedObject var viewModel: ConsumeListViewModel
    
    init(vm: ConsumeListViewModel = ConsumeListViewModel()) {
        viewModel = vm
    }
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                CustomText("Quantos litros você colocou", style: .bold)
                TextField("40L", text: $viewModel.textFieldText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.numbersAndPunctuation)
                    .padding(.bottom, 16)
                CustomText("Quantos km está marcando quando você abasteceu", style: .bold)
                TextField("99999km", text: $viewModel.ammountKmText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.numberPad)
                    .padding(.bottom, 16)
                CustomText("Quanto deu o abastecimento", style: .bold)
                TextField("R$200,00", text: $viewModel.fuelFullValueText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.numbersAndPunctuation)
                    .padding(.bottom, 16)
                CustomText("Qual foi a data do abastecimento", style: .bold)
                DatePicker(selection: $viewModel.date, displayedComponents: .date) {
                    Text("")
                }
                Spacer()
                CustomPrimaryButton(buttonText: "Salvar", action: {
                    self.viewModel.saveNewConsume()
                })
                
            }
            .padding(.all, 16)
            .navigationBarTitle("Novo consumo")
            .background(Color.backgroundColor)
        }
    }
}

struct InsertionView_Previews: PreviewProvider {
    static var previews: some View {
        InsertionView()
    }
}
