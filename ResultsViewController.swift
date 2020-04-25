//
//  ResultsViewController.swift
//  BMI Calculator
//
//  Created by Jhonatan Fernando on 2020-04-21.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    var bmiValue: String?
     var advice: String?
     var color: UIColor?
    
    @IBOutlet weak var lblResult: UILabel!
    @IBOutlet weak var btnRecalculate: UIButton!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var resultImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblResult.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
    }
    
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
