//
//  Lion.swift
//  LioN
//
//  Created by Wendy Wise on 9/13/15.
//  Copyright © 2015 Wendy Wise. All rights reserved.
//

import Foundation

class Lion : NSObject, NSCoding{
    
    var lionName = ""
    var lionDescription = ""
    var like = 1
    var lionNotes = ""
    
    func encodeWithCoder(aCoder: NSCoder){
        aCoder.encodeObject(lionName, forKey: "LionName")
        aCoder.encodeObject(lionDescription, forKey: "LionDescription")
        aCoder.encodeInteger(like, forKey: "Like")
        aCoder.encodeObject(lionNotes, forKey: "LionNotes")
    }
    
    required init(coder aDecoder: NSCoder){
        super.init()
        lionName = aDecoder.decodeObjectForKey("LionName") as! String
        lionDescription = aDecoder.decodeObjectForKey("LionDescription") as! String
        like = aDecoder.decodeIntegerForKey("Like")
        lionNotes = aDecoder.decodeObjectForKey("LionNotes") as! String
    }
    
    override init(){
        super.init()
    }
    
}