//
//  Users+CoreDataProperties.swift
//  ChatApp
//
//  Created by Kyle Gavin on 3/7/22.
//
//

import Foundation
import CoreData


extension Users {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Users> {
        return NSFetchRequest<Users>(entityName: "Users")
    }

    @NSManaged public var name: String?
    @NSManaged public var uuid: UUID?
    @NSManaged public var userid: Chats?

}

extension Users : Identifiable {

}
