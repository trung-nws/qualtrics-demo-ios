//
//  ViewController.swift
//  TestApp
//
//  Created by trung on 18/05/2022.
//

import UIKit
import Qualtrics

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonTapped(_ sender:UIButton)
    {
        Qualtrics.shared.evaluateProject { (targetingResults) in
            for (interceptID, result) in targetingResults {
                if result.passed() {
                    let displayed = Qualtrics.shared.display(viewController: self)
                }
            }
        }
    }
    
    @IBAction func buttonTapped2(_ sender:UIButton)
    {
        Qualtrics.shared.evaluateIntercept(for: "SI_5aMuEjBympdCV5c", completion: { (targetingResult) in
                if targetingResult.passed() {
                    let displayed = Qualtrics.shared.display(viewController: self)
                }
            })
    }
}

