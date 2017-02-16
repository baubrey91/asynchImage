//
//  Photo+CoreDataProperties.swift
//  Photorama
//
//  Created by Brandon Aubrey on 1/15/17.
//  Copyright © 2017 Brandon Aubrey. All rights reserved.
//

import Foundation
import CoreData

extension Photo {

    @NSManaged var photoID: String
    @NSManaged var photoKey: String
    @NSManaged var title: String
    @NSManaged var dateTaken: Date
    @NSManaged var remoteURL: URL
    @NSManaged var tags: Set<NSManagedObject>

}
