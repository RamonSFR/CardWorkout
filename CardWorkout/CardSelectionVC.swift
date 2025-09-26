//
//  CardSelectionVC.swift
//  CardWorkout
//
//  Created by Ramon Sávio Fontes Rocha on 26/09/25.
//

import UIKit

class CardSelectionVC: UIViewController {
    
    let cardImageView   = UIImageView()
    let stopButton      = CWButton(backgroundColor: .systemRed, title: "Stop!")
    let resetButton     = CWButton(backgroundColor: .systemGreen, title: "Reset")
    let rulesButton     = CWButton(backgroundColor: .systemBlue, title: "Rules")
    
    var cards: [UIImage] = CardDeck.allValues
    var timer: Timer!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureUI()
        startTimer()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        stopTimer()
    }
    
    @objc func startTimer() {
        timer = Timer.scheduledTimer(timeInterval: 0.1,
                                     target: self,
                                     selector: #selector(showRandomCard),
                                     userInfo: nil,
                                     repeats: true)
    }
    
    @objc func showRandomCard() {
        cardImageView.image = cards.randomElement()
    }
    
    @objc func stopTimer() {
        timer.invalidate()
    }
    
    @objc func resetTimer() {
        stopTimer()
        startTimer()
    }
    
    func configureUI() {
        configureCardImageView()
        configureStopButton()
        configureResetButton()
        configureRulesButton()
        setConstraints()
    }
    
    func configureCardImageView() {
        view.addSubview(cardImageView)
        cardImageView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func configureStopButton() {
        view.addSubview(stopButton)
        stopButton.addTarget(self, action: #selector(stopTimer), for: .touchUpInside)
    }
    
    func configureResetButton() {
        view.addSubview(resetButton)
        resetButton.addTarget(self, action: #selector(resetTimer), for: .touchUpInside)
    }
    
    func configureRulesButton() {
        view.addSubview(rulesButton)
        rulesButton.addTarget(self, action: #selector(presentRulesVC), for: .touchUpInside)
    }
    
    @objc func presentRulesVC() {
        present(RulesVC(), animated: true)
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            cardImageView.widthAnchor.constraint(equalToConstant: 250),
            cardImageView.heightAnchor.constraint(equalToConstant: 350),
            cardImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            cardImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -75),
            
            stopButton.widthAnchor.constraint(equalToConstant: 260),
            stopButton.heightAnchor.constraint(equalToConstant: 50),
            stopButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stopButton.topAnchor.constraint(equalTo: cardImageView.bottomAnchor, constant: 30),
            
            resetButton.widthAnchor.constraint(equalToConstant: 115),
            resetButton.heightAnchor.constraint(equalToConstant: 50),
            resetButton.topAnchor.constraint(equalTo: stopButton.bottomAnchor, constant: 20),
            resetButton.leadingAnchor.constraint(equalTo: stopButton.leadingAnchor),
            
            rulesButton.widthAnchor.constraint(equalToConstant: 115),
            rulesButton.heightAnchor.constraint(equalToConstant: 50),
            rulesButton.topAnchor.constraint(equalTo: resetButton.topAnchor),
            rulesButton.trailingAnchor.constraint(equalTo: stopButton.trailingAnchor)
        ])
    }
}
