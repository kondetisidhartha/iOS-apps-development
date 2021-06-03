
import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightSliderLabel: UILabel!
    @IBOutlet weak var weightSliderLabel: UILabel!
    
    var bmi:Float?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        heightSlider.value = 1.5
        weightSlider.value = 100
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
//        print("Height Slider changing to \(sender.value)")
//        Converting float to string
        heightSliderLabel.text = "\(String(format: "%.2f", sender.value))m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
//        print("Weight Slider changing to \(sender.value)")
//        Converting Float to Int to string
//        weightSliderLabel.text = "\(String(format: "%.0f", sender.value))
        weightSliderLabel.text = "\(String(Int(sender.value)))Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        bmi = weightSlider.value / pow(heightSlider.value, 2)
        print(bmi!)
//        let secondVC = SecondViewController()
//        secondVC.bmiValue = String(format: "%.1f", BMI)
        
//          present view controller modally
//        self.present(secondVC, animated: true, completion: nil)
        
//        performSegue coming from super class UIViewController
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.bmiValue = String(format: "%.1f", bmi!)
        }
    }
}

