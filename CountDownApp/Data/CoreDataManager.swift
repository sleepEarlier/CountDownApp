//
//  CoreDataManager.swift
//  CountDownApp
//
//  Created by usopp on 2020/7/20.
//  Copyright © 2020 usoppb. All rights reserved.
//

import CoreData
import UIKit

final class CoreDataManager {
    lazy var persistentContainer: NSPersistentContainer =  {
        let container = NSPersistentContainer(name: "EventsApp")
        container.loadPersistentStores { (desc: NSPersistentStoreDescription, error: Error?) in
            print("\(container), error:\(String(describing: error?.localizedDescription))")
        }
        return container
    }()
    
    var moc: NSManagedObjectContext {
       return persistentContainer.viewContext
    }
    
    func saveEvent(name: String, date: Date, image: UIImage) {
        let event = Event(context: moc)
        event.name = name
        event.date = date
        let imageData = image.jpegData(compressionQuality: 1)
        event.image = imageData
        
        do {
            try moc.save()
        } catch {
            print(error)
        }
    }
    
    func fetchEvents() -> [Event] {
        do {
            let request = NSFetchRequest<Event>(entityName: "Event")
            let events = try moc.fetch(request)
            return events
        } catch {
            print(error)
            return []
        }
    }
    
}
