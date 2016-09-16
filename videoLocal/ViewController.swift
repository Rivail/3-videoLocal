//
//  ViewController.swift
//  videoLocal
//
//  Created by Riva on 16/09/16.
//  Copyright © 2016 Riva. All rights reserved.
//

import UIKit
import MediaPlayer

class ViewController: UIViewController {
    var moviePlayer: MPMoviePlayerViewController?
    @IBAction func clicaVideo(sender: AnyObject) {
        
        let path = NSBundle.mainBundle().pathForResource("The Greatest Bass Solo Ever", ofType: "mp4")
        let url = NSURL.fileURLWithPath(path!)
         moviePlayer =  MPMoviePlayerViewController(contentURL: url)
        
        if let player = moviePlayer?.moviePlayer {                               //Está dando erro aqui
            player.view.frame = self.view.bounds
            player.prepareToPlay()
            player.scalingMode = .AspectFill
            self.view.addSubview(player.view)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

