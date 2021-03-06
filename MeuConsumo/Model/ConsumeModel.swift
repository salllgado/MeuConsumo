//
//  ConsumeModel.swift
//  MeuConsumo
//
//  Created by Chrystian on 02/05/20.
//  Copyright © 2020 Salgado Solutions. All rights reserved.
//

import Foundation

struct Consume: Identifiable {
    
    var id: UUID
    var date: String
    var litros: String
    var valor: String
    var km: String
    var average: String?
    
    init(litros: String, valor: String, km: String, data: String? = nil) {
        self.id = UUID()
        self.date = data ?? Consume.getDate()
        self.litros = litros
        self.valor = valor
        self.km = km
    }
    
    func saveInDatabase() {
        PersistenceManager.shared.saveConsume(self)
    }
    
    private static func getDate() -> String {
        return Utils.formatDate(Date())
    }
}

extension Consume {
    
    enum PersistenceKey: String {
        case data
        case litros
        case valor
        case km
        case average
    }
}
