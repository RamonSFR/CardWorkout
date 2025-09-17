//
//  CardSelectionVC.swift
//  CardWorkout
//
//  Created by Ramon Sávio Fontes Rocha on 17/09/25.
//

import UIKit

class CardSelectionVC: UIViewController {

    @IBOutlet var cardImageView: UIImageView!
    @IBOutlet var buttons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for button in buttons {
            button.layer.cornerRadius = 8
        }
    }

    @IBAction func stopButtonTapped(_ sender: UIButton) {
    }
    
    
    @IBAction func restartButtonTapped(_ sender: UIButton) {
    }
    
    
    @IBAction func rulesButtonTapepd(_ sender: UIButton) {
    }
}
