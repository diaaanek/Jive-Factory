//
//  BandsDetailViewController.swift
//  Jive Factory
//
//  Created by Diane Korongy on 2/10/18.
//  Copyright © 2018 Diane Korongy. All rights reserved.
//

import UIKit
import WebKit

class BandsDetailViewController: UIViewController {
    
    var currentBandDetail: BandDetail?
    @IBOutlet weak var bandNameLabel: UILabel!
    @IBOutlet weak var bandTypeLabel: UILabel!
    @IBOutlet weak var venueLabel: UILabel!
    @IBOutlet weak var showDateLabel: UILabel!
    @IBOutlet weak var showTimeLabel: UILabel!
    @IBOutlet weak var showDetailsLabel: UILabel!
    @IBOutlet weak var bandDescriptionLabel: UITextView!
    @IBOutlet weak var bandImage: UIImageView!
    
    @IBOutlet weak var videoWebView: WKWebView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bandNameLabel.text = currentBandDetail?.bandName
        bandTypeLabel.text = currentBandDetail?.bandType
        venueLabel.text = currentBandDetail?.venue
        showDateLabel.text = currentBandDetail?.nextShowDate
        showTimeLabel.text = currentBandDetail?.showDetails
        showDetailsLabel.text = currentBandDetail?.showDetails
        bandDescriptionLabel.text = currentBandDetail?.bandDescription
        bandImage.image = UIImage(named: currentBandDetail!.fullImageName!)
     
        
        let htmlString = """
<html><body><iframe style=\"position:absolute; top:0; left:0; width:100%; height:100%;\" src=\"\(currentBandDetail!.videoURL!)\";frameborder=\"0\" allowfullscreen></iframe></body></html>
"""
        
        videoWebView.loadHTMLString(htmlString, baseURL: nil)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
