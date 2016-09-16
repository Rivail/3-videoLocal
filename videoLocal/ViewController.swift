 //Postando um vídeo no Device

import UIKit
import MediaPlayer

class ViewController: UIViewController {
    var moviePlayer: MPMoviePlayerViewController?
    @IBAction func clicaVideo(sender: AnyObject) {
        
        let path = NSBundle.mainBundle().pathForResource("The Greatest Bass Solo Ever", ofType: "mp4")
        let url = NSURL.fileURLWithPath(path!)
         moviePlayer =  MPMoviePlayerViewController(contentURL: url)
        
        if let player = moviePlayer?.moviePlayer {                                
            player.view.frame = self.view.bounds
            player.prepareToPlay()
            player.scalingMode = .AspectFill
            self.view.addSubview(player.view)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
         
    }


}

