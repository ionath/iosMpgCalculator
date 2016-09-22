//
//  ViewController.swift
//  MpgCalculator
//
//  Created by John Franklin on 22/09/2016.
//  Copyright © 2016 John Franklin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: Properties
    @IBOutlet weak var distanceTextField: UITextField!
    @IBOutlet weak var fuelTextField: UITextField!
    @IBOutlet weak var mpgTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: Actions
    @IBAction func distanceEdited(_ sender: UITextField) {
        updateMpg()
    }
    @IBAction func fuelEdited(_ sender: UITextField) {
        updateMpg()
    }
    @IBAction func addMileage(_ sender: UIButton) {
        let distance = Float(distanceTextField.text!)
        let fuel = Float(fuelTextField.text!)
        let today = Date.init(timeIntervalSinceNow: 0)
        
        let fuelPoint = FuelPoint(distance: distance!, fuelUsed: fuel!, date: today)
        // TODO: do something with fuelPoint
    }
    
    func updateMpg() {
        let distance = Float(distanceTextField.text!)
        let fuel = Float(fuelTextField.text!)
        if (distance != nil && fuel != nil && fuel! > 0) {
            let mpg = distance! / fuel! * 4.54609
            mpgTextField.text = String(format: "%.1f", mpg)
        }
        else {
            mpgTextField.text = nil
        }
    }
}

