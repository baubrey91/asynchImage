//
//  Photo.swift
//  Photorama
//
//  Created by Brandon Aubrey on 1/15/17.
//  Copyright © 2017 Brandon Aubrey. All rights reserved.
//

import UIKit
import CoreData

class Photo: NSManagedObject {

    var image: UIImage?
    
    override func awakeFromInsert() {
        super.awakeFromInsert()
        
        // Give the properties their initial values
        title = ""
        photoID = ""
        remoteURL = URL(fileURLWithPath: "")
        photoKey = UUID().uuidString
        dateTaken = Date()
    }
    
    func addTagObject(_ tag: NSManagedObject) {
        let currentTags = mutableSetValue(forKey: "tags")
        currentTags.add(tag)
    }
    
    func removeTagObject(_ tag: NSManagedObject) {
        let currentTags = mutableSetValue(forKey: "tags")
        currentTags.remove(tag)
    }

}
