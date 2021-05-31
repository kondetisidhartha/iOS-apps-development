import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    let eggTimes = ["Soft": 3, "Medium": 4, "Hard": 7]
    var secondsRemaining = 0
    var totalSecondsNeeded = 0
    var timer = Timer()
    var player: AVAudioPlayer!

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var progressBarTimer: UIProgressView!
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        progressBarTimer.progress = 0
        timer.invalidate()
        titleLabel.text = "Cooking in progress."
        
        totalSecondsNeeded = eggTimes[sender.currentTitle!]!
        secondsRemaining = totalSecondsNeeded
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateSecondsRemaining), userInfo: nil, repeats: true)
    }

    @objc func updateSecondsRemaining() {
        
        if secondsRemaining > 1 {
            secondsRemaining -= 1
            progressBarTimer.progress = Float(1.0 - (Float(secondsRemaining)/Float(totalSecondsNeeded)))
        } else {
            timer.invalidate()
            titleLabel.text = "Done"
            secondsRemaining = 0
            progressBarTimer.progress = 1.0
            playSound()
        }
        
        
    }
    
    func playSound() {
        let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
    
}
