//
//  ConsumeModel.swift
//  MeuConsumo
//
//  Created by Chrystian on 02/05/20.
//  Copyright © 2020 Salgado Solutions. All rights reserved.
//

import Foundation

struct Consume {
    
    var data: String
    var litros: String
    var valor: String
    var km: String
    var average: String?
    
    init(litros: String, valor: String, km: String) {
        self.data = Consume.getDate()
        self.litros = litros
        self.valor = valor
        self.km = km
    }
    
    private static func getDate() -> String {
        let dateFormatter : DateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        let date = Date()
        return dateFormatter.string(from: date)
        
    }
}
