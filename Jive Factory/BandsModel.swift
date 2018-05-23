//
//  BandsModel.swift
//  Jive Factory
//
//  Created by Diane Korongy on 2/24/18.
//  Copyright © 2018 Diane Korongy. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase

class BandsModel: NSObject {
    var bandDetails = [BandDetail]()
    
    func fetch(completion:@escaping() -> ()) {
        let myRootRef = Database.database().reference()
        
        
        myRootRef.observe(.value) { (snapshot) in
            self.bandDetails = []
            let bandDictionarys = snapshot.value
                as? [[String : String]] ?? []
            for bandDictionary in
                bandDictionarys{
                    self.bandDetails.append(BandDetail (dictionary: bandDictionary))
            }
            
        
        completion()
        }
    }
}
