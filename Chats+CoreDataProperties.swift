//
//  Chats+CoreDataProperties.swift
//  ChatApp
//
//  Created by Kyle Gavin on 3/7/22.
//
//

import Foundation
import CoreData


extension Chats {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Chats> {
        return NSFetchRequest<Chats>(entityName: "Chats")
    }

    @NSManaged public var sent: Bool
    @NSManaged public var recieved: Bool
    @NSManaged public var msg: String?
    @NSManaged public var time: Date?
    @NSManaged public var chatLog: Users?

}
