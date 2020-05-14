//
//  PersistenceManager.swift
//  MeuConsumo
//
//  Created by Chrystian on 09/05/20.
//  Copyright © 2020 Salgado Solutions. All rights reserved.
//

import UIKit
import CoreData

struct PersistenceManager {
    
    var appDelegate: AppDelegate?
    var context: NSManagedObjectContext?
    var coordinator: NSPersistentStoreCoordinator?
    
    static let shared = PersistenceManager()
    
    init() {
        appDelegate = UIApplication.shared.delegate as? AppDelegate
        coordinator = appDelegate?.persistentStoreCoordinator
        context = appDelegate?.managedObjectContext
    }
    
    func saveConsume(_ consumeObj: Consume) {
        guard let context = context else { return }
        guard let consumeEntity = NSEntityDescription.entity(forEntityName: "ConsumeModel", in: context) else { return }
        let consume = NSManagedObject(entity: consumeEntity, insertInto: context)
        
        consume.setValue(consumeObj.date, forKey: Consume.PersistenceKey.data.rawValue)
        consume.setValue(consumeObj.average, forKey: Consume.PersistenceKey.average.rawValue)
        consume.setValue(consumeObj.km, forKey: Consume.PersistenceKey.km.rawValue)
        consume.setValue(consumeObj.litros, forKey: Consume.PersistenceKey.litros.rawValue)
        consume.setValue(consumeObj.valor, forKey: Consume.PersistenceKey.valor.rawValue)
        
        do {
            try context.save()
            print("success saving object")
        } catch {
            print("error when system trying save object")
        }
    }
    
    func fetchConsumes() -> [Consume] {
        guard let context = context else { return [] }
        var consumes = [Consume]()
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "ConsumeModel")
        guard let entity = NSEntityDescription.entity(forEntityName: "ConsumeModel", in: context) else { return [] }
        
        fetchRequest.entity = entity
        
        do {
            let items = try context.fetch(fetchRequest)
            
            for item in (items as? [NSManagedObject]) ?? [] {
                if let data = item.value(forKey: Consume.PersistenceKey.data.rawValue) as? String,
//                    let average = item.value(forKey: Consume.PersistenceKey.average.rawValue) as? String,
                    let km = item.value(forKey: Consume.PersistenceKey.km.rawValue) as? String,
                    let litros = item.value(forKey: Consume.PersistenceKey.litros.rawValue) as? String,
                    let valor = item.value(forKey: Consume.PersistenceKey.valor.rawValue) as? String {
                    
                    consumes.append(Consume(litros: litros, valor: valor, km: km, data: data))
                }
                
            }
        } catch {
            print("error")
            return consumes
        }
        
        return consumes
    }
    
    func updateConsumes(_ consumes: [Consume]) {
        guard let context = context else { return }
        
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "ConsumeModel")
        let deleteRequest = NSBatchDeleteRequest(fetchRequest: fetchRequest)
        
        do {
            try coordinator?.execute(deleteRequest, with: context)
        } catch {
            debugPrint("error trying remove consumes")
        }
        
        
        consumes.forEach { (consume) in
            self.saveConsume(consume)
        }
    }
}
