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
                ConsumeListTextField(text: $viewModel.textFieldText, placeholder: "40L", keyboardType: .numbersAndPunctuation)
                CustomText("Quantos km está marcando quando você abasteceu", style: .bold)
                ConsumeListTextField(text: $viewModel.ammountKmText, placeholder: "99999km", keyboardType: .numberPad)
                CustomText("Quanto deu o abastecimento", style: .bold)
                ConsumeListTextField(text: $viewModel.fuelFullValueText, placeholder: "R$200,00", keyboardType: .numbersAndPunctuation)
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
