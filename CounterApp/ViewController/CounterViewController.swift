//
//  ViewController.swift
//  CounterApp
//
//  Created by Алексей Моторин on 29.09.2022.
//

import UIKit

class CounterViewController: UIViewController {
    
    // MARK: - UI Properties
    private lazy var countLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.numberOfLines = 0
        label.font = TextFontStyle.title.textFont
        label.textColor = TextFontStyle.title.textColor
        return label
    }()
    
    private lazy var addCountButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("ЖМИ!!!", for: .normal)
        button.backgroundColor = ColorStyle.yellow.colorSetings
        button.setTitleColor(TextFontStyle.body.textColor, for: .normal)
        button.titleLabel?.font = TextFontStyle.title.textFont
        button.layer.cornerRadius = 10
        button.titleLabel?.textColor = TextFontStyle.body.textColor
        button.addTarget(self, action: #selector(addCountButtonTaped), for: .touchUpInside)
        return button
    }()
    
    // MARK: - Private Properties
    private var addCounter = AddCounter()
    private let multiplierWidthCountLabel: CGFloat = 0.8
    private let multiplierHeightAddCountButton: CGFloat = 0.1
    private let topAnchor: CGFloat = 50
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setingsCounterVC()
    }
    
    // MARK: - Private Methods
    private func setingsCounterVC() {
        view.backgroundColor = ColorStyle.purple.colorSetings
        creatViews()
    }
    
    private func creatViews() {
        view.addSubview(countLabel)
        view.addSubview(addCountButton)
        countLabel.text = "Значение счётчика: \(addCounter.returnCount())"
        activateConstraints()
    }
    
    private func activateConstraints() {
        NSLayoutConstraint.activate([
            countLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            countLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            countLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: multiplierWidthCountLabel),
            
            addCountButton.widthAnchor.constraint(equalTo: countLabel.widthAnchor),
            addCountButton.topAnchor.constraint(equalTo: countLabel.bottomAnchor, constant: topAnchor),
            addCountButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            addCountButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: multiplierHeightAddCountButton)
        ])
    }
    
    @objc private func addCountButtonTaped() {
        addCountButton.showAnimation {
            self.addCounter.addOne()
            self.countLabel.text = "Значение счётчика: \(self.addCounter.returnCount())"
        }
    }
    
}

