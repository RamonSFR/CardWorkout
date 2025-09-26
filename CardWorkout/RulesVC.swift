//
//  RulesVC.swift
//  CardWorkout
//
//  Created by Ramon Sávio Fontes Rocha on 26/09/25.
//

import UIKit

class RulesVC: UIViewController {
    let titleLabel = UILabel()
    let rulesLabel = UILabel()
    let exerciceLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setupUI()
    }
    
    func setupUI() {
        configureTitleLabel()
        configureRulesLabel()
        configureExerciceLabel()
        setConstraints()
    }
    
    func configureTitleLabel() {
        view.addSubview(titleLabel)
        titleLabel.textAlignment = .center
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = "Rules"
        titleLabel.font = .systemFont(ofSize: 40, weight: .bold)
    }
    
    func configureRulesLabel() {
        view.addSubview(rulesLabel)
        rulesLabel.numberOfLines = 0
        rulesLabel.lineBreakMode = .byWordWrapping
        rulesLabel.textAlignment = .center
        rulesLabel.translatesAutoresizingMaskIntoConstraints = false
        rulesLabel.text = "The value of each card represents the number of exercise you do. \n\nJ = 11, Q = 12, K = 13, A = 14"
        rulesLabel.font = .systemFont(ofSize: 19, weight: .semibold)
    }
    
    func configureExerciceLabel() {
        view.addSubview(exerciceLabel)
        exerciceLabel.numberOfLines = 0
        exerciceLabel.translatesAutoresizingMaskIntoConstraints = false
        exerciceLabel.text = """
        ♠️ = Push Ups
        
        ♦️ = Burpees
        
        ❤️ = Squat's
        
        ♣️ = Sit up's
        """
        exerciceLabel.font = .systemFont(ofSize: 26, weight: .semibold)
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            rulesLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 25),
            rulesLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30),
            rulesLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -30),
            
            exerciceLabel.topAnchor.constraint(equalTo: rulesLabel.bottomAnchor, constant: 60),
            exerciceLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            exerciceLabel.widthAnchor.constraint(equalToConstant: 200)
        ])
    }
}
