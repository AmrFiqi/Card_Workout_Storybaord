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
    
    
    // MARK: - Variables
    
    var timer: Timer!
    var cards: [UIImage] = Card.allValues
    
    // MARK: - VC Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        startTimer()
        for button in buttons {
            button.layer.cornerRadius = 8
        }
    }
        
        override func viewWillDisappear(_ animated: Bool) {
            super.viewWillDisappear(animated)
            timer.invalidate()
    }
        

    // MARK: - Functions
    
    func startTimer() {
        timer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(showRandomImage), userInfo: nil, repeats: true)
    }
    
    @objc func showRandomImage() {
        cardImageView.image = cards.randomElement() ?? UIImage(named: "AS")
    }
    
    // MARK: - IBActions
    
    
    @IBAction func stopButtonTapped(_ sender: UIButton) {
        timer.invalidate()
    }
    
    
    @IBAction func refreshButtonTapped(_ sender: UIButton) {
        timer.invalidate()
        startTimer()
    }

}

