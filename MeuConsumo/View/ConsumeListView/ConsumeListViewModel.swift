//
//  ConsumeListViewModel.swift
//  MeuConsumo
//
//  Created by Chrystian on 02/05/20.
//  Copyright © 2020 Salgado Solutions. All rights reserved.
//

import Foundation
import SwiftUI

class ConsumeListViewModel: ObservableObject, Identifiable {
    
    @Published var isPresentingAddModal: Bool = false {
        didSet {
            self.fetchList()
        }
    }
    
    @Published var textFieldText: String = ""
    @Published var ammountKmText: String = ""
    @Published var fuelFullValueText: String = ""
    
    @Published var consumes: [Consume] = []
    
    func saveNewConsume() {
        let consume = Consume(litros: textFieldText, valor: fuelFullValueText, km: ammountKmText)
        consume.saveInDatabase()
        
        isPresentingAddModal.toggle()
    }
    
    func fetchList() {
        consumes = PersistenceManager.shared.fetchConsumes()
    }
    
    func updateDatabase() {
        PersistenceManager.shared.updateConsumes(self.consumes)
    }
}
