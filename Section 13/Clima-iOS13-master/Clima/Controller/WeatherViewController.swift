
import UIKit

class WeatherViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var conditionImageView: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var searchTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // handover textfield variable to ViewController so it tracks for delegate functions
        searchTextField.delegate = self
    }

    @IBAction func searchPressed(_ sender: UIButton) {
        searchTextField.endEditing(true)
        print(searchTextField.text ?? "London")
    }
    
    // Delegate are called by UITextField here and runs code inside each delegate
    // which is why we can refer to called textfield using "textfield" parameter passed to function
    
    // when enter key pressed in keyboard
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        searchTextField.endEditing(true)
        print(searchTextField.text!)
        return true
    }
    
    // when delegate from "textFieldShouldEndEditing" is true, this is called, can do clean up job or calling API here
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        // Use searchFieldText.text to get location and find its weather
        
        searchTextField.text = ""
        searchTextField.placeholder = "Search"
    }
    
    // When should the keyboard must be closed for textfield to stop editing
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if textField.text != "" {
            return true
        } else {
            textField.placeholder = "Provide location"
            return false
        }
    }
}

