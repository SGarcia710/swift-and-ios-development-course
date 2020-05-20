//
//  ViewController.swift
//  ControlsAndTextViews
//
//  Created by Sebastián on 20/05/20.
//  Copyright © 2020 Sebastian Garcia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Outlets
    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var myPickerView: UIPickerView!
    @IBOutlet weak var myPageControl: UIPageControl!
    @IBOutlet weak var mySegmentedControl: UISegmentedControl!
    @IBOutlet weak var mySlider: UISlider!
    @IBOutlet weak var myStepper: UIStepper!
    @IBOutlet weak var mySwitch: UISwitch!
    @IBOutlet weak var myProgressView: UIProgressView!
    @IBOutlet weak var myActivityIndicatorView: UIActivityIndicatorView!
    @IBOutlet weak var myStepperLabel: UILabel!
    @IBOutlet weak var mySwitchLabel: UILabel!
    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var myTextView: UITextView!
    
    // Variables
    private let myPickerViewValues = ["Sebastián", "Luisa", "Jonatan", "Natalia", "Daniela"]
    
    // Functions
    func toggleButton() {
        if myButton.backgroundColor == .blue {
            myButton.backgroundColor = .green
            myButton.setTitleColor(.black, for: .normal)
        } else {
            myButton.setTitleColor(.white, for: .normal)
            myButton.backgroundColor = .blue
        }
    }
    
    func generateProgressValue(fromInt number: Int) -> Float {
        if number == 0 {
            return 0
        }
        return Float(Double((number + 1) * 2) * 0.10)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Button
        myButton.setTitle("Mi Botón", for: .normal)
        myButton.backgroundColor = .blue
        myButton.setTitleColor(.white, for: .normal)
        
        // Pickers
        myPickerView.isHidden = true
        myPickerView.backgroundColor = .lightGray
        myPickerView.dataSource = self
        myPickerView.delegate = self
        
        // PageControls
        myPageControl.numberOfPages = myPickerViewValues.count
        myPageControl.currentPageIndicatorTintColor = .blue
        myPageControl.pageIndicatorTintColor = .lightGray
        
        // Segmented Control
        mySegmentedControl.removeAllSegments()
        for (index, value) in myPickerViewValues.enumerated() {
           mySegmentedControl.insertSegment(withTitle: value, at: index, animated: true)
        }
        mySegmentedControl.selectedSegmentIndex = 0
     
        // Sliders
        mySlider.minimumValue = 0
        mySlider.maximumValue = Float(myPickerViewValues.count - 1)
        mySlider.value = 0
        mySlider.minimumTrackTintColor = .lightGray
        mySlider.maximumTrackTintColor = .green
        
        // Steppers
        myStepper.minimumValue = 0
        myStepper.maximumValue = Double(myPickerViewValues.count - 1)
        
        // Switch
        mySwitch.onTintColor = .purple
        mySwitch.isOn = false
        
        // Progress Indicators
        myProgressView.progress = 0

        myActivityIndicatorView.hidesWhenStopped = true
        myActivityIndicatorView.color = .orange
        myActivityIndicatorView.startAnimating()
        
        // Labels
        myStepperLabel.textColor = .darkGray
        myStepperLabel.font = UIFont.boldSystemFont(ofSize: 36)
        myStepperLabel.text = "1"
        
        mySwitchLabel.text = "Está apagado"
        
        // TextFields
        myTextField.textColor = .brown
        myTextField.placeholder = "Escribe algo"
        myTextField.delegate = self
        
        // TextViews
        myTextView.textColor = .brown
        // myTextView.isEditable = false <- This let us to use the TextView just for show scrollable text.
        myTextView.delegate = self
    }
    
    // Actions
    @IBAction func myButtonAction(_ sender: Any) {
        toggleButton()
        myTextView.resignFirstResponder() // This closes the TextView's keyboard when the button is pressed
    }
    
    @IBAction func myPageControlAction(_ sender: Any) {
        let pageIndex = myPageControl.currentPage
        myButton.setTitle(myPickerViewValues[pageIndex], for: .normal)
        myPickerView.selectRow(pageIndex, inComponent: 0, animated: true)
        mySegmentedControl.selectedSegmentIndex = pageIndex
        mySlider.value = Float(pageIndex)
        myStepper.value = Double(pageIndex)
        myProgressView.progress = generateProgressValue(fromInt: pageIndex)
        myStepperLabel.text = "\(pageIndex + 1)"

    }
    
    @IBAction func mySegmentedControlAction(_ sender: Any) {
        let segmentedIndex = mySegmentedControl.selectedSegmentIndex
        myButton.setTitle(myPickerViewValues[segmentedIndex], for: .normal)
        myPickerView.selectRow(segmentedIndex, inComponent: 0, animated: true)
        myPageControl.currentPage = segmentedIndex
        mySlider.value = Float(segmentedIndex)
        myStepper.value = Double(segmentedIndex)
        myProgressView.progress = generateProgressValue(fromInt: segmentedIndex)
        myStepperLabel.text = "\(segmentedIndex + 1)"
    }
    
    @IBAction func mySliderAction(_ sender: Any) {
        let sliderIndex = Int(mySlider.value)
        myButton.setTitle(myPickerViewValues[sliderIndex], for: .normal)
        myPickerView.selectRow(sliderIndex, inComponent: 0, animated: true)
        myPageControl.currentPage = sliderIndex
        mySegmentedControl.selectedSegmentIndex = sliderIndex
        myStepper.value = Double(sliderIndex)
        myProgressView.progress = generateProgressValue(fromInt: sliderIndex)
        myStepperLabel.text = "\(sliderIndex + 1)"
    }
    
    @IBAction func myStepperAction(_ sender: Any) {
        let stepperValue = Int(myStepper.value)
        myButton.setTitle(myPickerViewValues[stepperValue], for: .normal)
        myPickerView.selectRow(stepperValue, inComponent: 0, animated: true)
        myPageControl.currentPage = stepperValue
        mySegmentedControl.selectedSegmentIndex = stepperValue
        mySlider.value = Float(stepperValue)
        myProgressView.progress = generateProgressValue(fromInt: stepperValue)
        myStepperLabel.text = "\(stepperValue + 1)"
    }
    
    @IBAction func mySwitchAction(_ sender: Any) {
        let switchValue = mySwitch.isOn
        if switchValue {
            myPickerView.isHidden = false
            toggleButton()
            myActivityIndicatorView.stopAnimating()
            mySwitchLabel.text = "Está encendido"
        } else {
            myPickerView.isHidden = true
            toggleButton()
            myActivityIndicatorView.startAnimating()
            mySwitchLabel.text = "Está apagado"
        }
    }
}

// Delegates Implementations: These are done as Extensions for the ViewControlle to avoid saturating the main class.

// We need to implement these protocols to the ViewController to be able to configure our PickerView
extension ViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        // Here we can choose how many columns we want, like the Date Picker, it has 3 columns.
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return myPickerViewValues.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return myPickerViewValues[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        // This function its fired everytime we choose a row in the picker view(Component is the column, for this example we only have one component(column)
        myButton.setTitle(myPickerViewValues[row], for: .normal)
        myPageControl.currentPage = row
        mySegmentedControl.selectedSegmentIndex = row
        mySlider.value = Float(row)
        myStepper.value = Double(row)
        myProgressView.progress = generateProgressValue(fromInt: row)
        myStepperLabel.text = "\(row + 1)"
    }
}

// This extensions is necesary to implement functionality to our TextField.
extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // This is activated when the intro button on the keyboard is pressed
        textField.resignFirstResponder() // This will close the keyboard
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        // When editing at the text field is done
        myButton.setTitle(myTextField.text, for: .normal)
    }
}


extension ViewController: UITextViewDelegate {
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        // This is fired when the user starts editing the TextView
        myTextField.isHidden = true
    }
    func textViewDidEndEditing(_ textView: UITextView) {
        myTextField.isHidden = false
    }
}
