//
//  ViewController.swift
//  IntroduceStudent
//
//  Created by Eshita Shrawan on 1/24/23.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func stepperDidChange(_ sender: UIStepper) {
        numberOfPets.text = "\(Int(sender.value))"
    }
    @IBAction func introduceSelfDidTap(_ sender: UIButton) {
        // Lets us choose the title we have selected from the segmented control
                // In our example that is whether it is first, second, third or forth
                let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
                
                // Creating a constant of type string that holds an introduction. The introduction receives the values from the outlet connections.
                let introduction = "My name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I attend \(schoolNameTextField.text!). I am currently in my \(year!) year and I own \(numberOfPets.text!) dogs. It is \(morePetsSwitch.isOn) that I want more pets."

        // Creates the alert where we pass in our message, which our introduction.
                let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        
        alertController.addTextField { (textField: UITextField!) -> Void in
              textField.placeholder = "enter phone number"
        }
                
                // A way to dismiss the box once it pops up
        let action = UIAlertAction(title: "Sign me up for more pet shelter updates!", style: UIAlertAction.Style.default) {(alertAction: UIAlertAction!) -> Void in let textField = alertController.textFields![0] as UITextField
        }
                
                // Passing this action to the alert controller so it can be dismissed
                alertController.addAction(action)
                
                present(alertController, animated: true, completion: nil)
    }
    @IBOutlet weak var morePetsSwitch: UISwitch!
    @IBOutlet weak var numberOfPetsStepper: UIStepper!
    @IBOutlet weak var numberOfPets: UILabel!
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    @IBOutlet weak var schoolNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var firstNameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

