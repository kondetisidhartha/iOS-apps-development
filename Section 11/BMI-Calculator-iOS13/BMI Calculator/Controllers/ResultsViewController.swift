
import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    var bmiValue: String?
    var adviceText: String?
    var bgColor: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
        adviceLabel.text = adviceText
        view.backgroundColor = bgColor
    }
    
    
    @IBAction func reCalculatePressed(_ sender: UIButton) {
//        self.performSegue(withIdentifier: "goToHome", sender: self)
//        Short way of closing current view controller and moving back to parent controller
        self.dismiss(animated: true, completion: nil)
    }
    
}
