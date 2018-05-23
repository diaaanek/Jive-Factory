//
//  BandDetail.swift
//  Jive Factory
//
//  Created by Diane Korongy on 2/10/18.
//  Copyright © 2018 Diane Korongy. All rights reserved.
//

import UIKit

class BandDetail: NSObject {

    var bandName: String?
    var bandType: String?
    var bandDescription: String?
    var fullImageName: String?
    var thumbImageName: String?
    var nextShowDate: String?
    var nextShowTime: String?
    var venue: String?
    var showDetails: String?
    var videoURL: String?
 
    init(dictionary: [String: String]) {
        bandName = dictionary ["bandName"]
        bandType = dictionary ["bandType"]
        bandDescription = dictionary ["bandDescription"]
        fullImageName = dictionary ["fullImageName"]
        thumbImageName = dictionary ["thumbImageName"]
        nextShowDate = dictionary ["nextShowDate"]
        nextShowTime = dictionary ["nextShowTime"]
        venue = dictionary ["venue"]
        showDetails = dictionary ["showDetails"]
        videoURL = dictionary ["videoURL"]
    }
    
    
}
