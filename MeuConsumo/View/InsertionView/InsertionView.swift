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
                CustomText(viewModel.textFieldTitle, style: .bold)
                TextField("40L", text: $viewModel.textFieldText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.default)
                Spacer()
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
