
import UIKit

class SecondViewController: UIViewController {
    
    var bmiValue = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        
        let label = UILabel()
        label.text = bmiValue
        label.textColor = .white
        label.frame = CGRect(x: 10, y: 30, width: 200, height: 100)
        view.addSubview(label)
    }
    
}
