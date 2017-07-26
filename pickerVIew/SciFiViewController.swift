//
//  SciFiViewController.swift
//  pickerVIew
//
//  Created by iD Student on 7/26/17.
//  Copyright © 2017 iD Tech. All rights reserved.
//


import Foundation
import UIKit


class SciFiViewController : UIViewController {
    
    @IBOutlet weak var showLabel: UILabel!
    
    @IBOutlet weak var episodeLabel: UILabel!
    @IBOutlet weak var seasonLabel: UILabel!
    override func viewDidLoad()
        
           {
        super.viewDidLoad()
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       

    }
    var showArray : [Show] = [
        
        Show(seasons: [3,4,6], showName: "Black Mirror"),
        Show(seasons:[8], showName:"Stranger things"),
        Show(seasons:[23,23,23], showName: "Flash"),
        Show(seasons:[13,13,13,13,13,13,13,12,12,12], showName: "Doctor Who")
        
        
        
    ]
    
    @IBAction func pickaViewAction(_ sender: Any) {
        
        let randomShowIndex = Int(arc4random_uniform(UInt32(Int(showArray.count))))
        
        
        let randomSeason = Int(arc4random_uniform(UInt32(Int(showArray[randomShowIndex].seasons.count))))
    
        showLabel.text = showArray[randomShowIndex].showName
        
        seasonLabel.text = "Season \( randomSeason + 1)"
        
        let randomShow = showArray[randomShowIndex]
        
        let numEpisodeInSeason = randomShow.seasons[randomSeason]
        
        let randomEpisode = arc4random_uniform(UInt32(Int(numEpisodeInSeason )))
  
        episodeLabel.text = "episode \(randomEpisode + 1)"
    }

    

    
}
