import CoreData
import Foundation

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "ChatData")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core Data: \(error.localizedDescription)")
            }
        }
    }
}
