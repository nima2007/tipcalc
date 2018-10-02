//
//  ViewController.swift
//  tippy
//
//  Created by Nima Vasseghi on 9/26/18.
//  Copyright © 2018 Nima Vasseghi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var goodTipLabel: UILabel!
    @IBOutlet weak var goodTotalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        //print("yo")
        view.endEditing(true)
    }

    @IBAction func calc(_ sender: Any) {
        let tipPercents = [0.18, 0.2, 0.25]
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercents[tipControl.selectedSegmentIndex]
        let total = bill + tip
        goodTipLabel.text = String(format: "$%.2f", tip)
        goodTotalLabel.text = String(format: "$%.2f", total)
    }
    

}

