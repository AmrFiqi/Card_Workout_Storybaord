//
//  ViewController.swift
//  Card Workout
//
//  Created by Amr El-Fiqi on 29/08/2024.
//

import UIKit

class CardSelectionVC: UIViewController {
    
    // MARK: - IBOutlets
    
    @IBOutlet var cardImageView: UIImageView!
    @IBOutlet var buttons: [UIButton]!
    
    // MARK: - VC Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        for button in buttons {
            button.layer.cornerRadius = 8
        }
        
    }

    // MARK: - Functions
    
    
    
    // MARK: - IBActions
    
    
    @IBAction func stopButtonTapped(_ sender: UIButton) {
        
    }
    
    
    @IBAction func refreshButtonTapped(_ sender: UIButton) {
    }
    
    
    @IBAction func rulesButtonTapped(_ sender: UIButton) {
    }
    
}

