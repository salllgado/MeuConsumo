//
//  Utils.swift
//  MeuConsumo
//
//  Created by Chrystian on 13/05/20.
//  Copyright © 2020 Salgado Solutions. All rights reserved.
//

import Foundation

class Utils {
    
    class func formatDate(_ date: Date) -> String {
        let dateFormatter : DateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        return dateFormatter.string(from: date)
    }
}
