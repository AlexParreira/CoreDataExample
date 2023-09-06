//
//  DataControlle.swift
//  CoreDataExample
//
//  Created by Alexander Parreira on 06/09/23.
//

import Foundation
import CoreData


class DataControlle: ObservableObject{
    let conteiner = NSPersistentContainer(name: "DataModel")
    
    init(){
        conteiner.loadPersistentStores{ desc, error in
            if let error = error{
                print("Failed to load the data \(error.localizedDescription)")
            }
        }
    }
    
    func save(context: NSManagedObjectContext){
        do{
            try context.save()
            print("Data saved!!! WUHU!!!")
        } catch {
            print("We could not save the data...")
        }
    }
    
    func addFood( name: String, calories: Double, context: NSManagedObjectContext){
        let food = Food(context: context)
        food.id = UUID()
        food.date = Date()
        food.name = name
        food.calories = calories
        
        save(context: context)
    }
    
    func editFood(food: Food, name: String, calories: Double, context: NSManagedObjectContext){
        let food = Food(context: context)
        food.date = Date()
        food.name = name
        food.calories =  calories
        
        save(context: context)
    }
    
}
