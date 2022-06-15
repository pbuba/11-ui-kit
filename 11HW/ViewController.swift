//
//  ViewController.swift
//  11HW
//
//  Created by Павел Бубликов on 13.06.2022.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Алексей Павлов"
        label.textColor = .white
        label.font = .systemFont(ofSize: 18, weight: .regular)
        label.textAlignment = .left
        
        return label
    }()
    
    private lazy var buttonLabel: UILabel = {
        let label = UILabel()
        label.text = "Установить статус"
        label.textColor = .white
        label.font = .systemFont(ofSize: 14, weight: .regular)
        label.textAlignment = .left
        
        return label
    }()
    
    private lazy var statusLabel: UILabel = {
        let label = UILabel()
        label.text = "онлайн"
        label.textColor = .gray
        label.font = .systemFont(ofSize: 12, weight: .regular)
        label.textAlignment = .left
        
        return label
    }()
    
    private lazy var labelsStackView: UIStackView = {
        let stackView = UIStackView()
        
        stackView.axis = .vertical
        stackView.spacing = 3
        
        return stackView
    }()
    
    private lazy var profileStackView: UIStackView = {
        let stackView = UIStackView()
        
        stackView.axis = .horizontal
        stackView.spacing = 10
        
        return stackView
    }()
    
    private lazy var avatarImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "avatar.png")
        image.layer.masksToBounds = true
        image.heightAnchor.constraint(equalToConstant: 70).isActive = true
        image.widthAnchor.constraint(equalToConstant: 70).isActive = true
        image.layer.cornerRadius = 35
        return image
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupHierarchy()
        setupLayout()
        setupView()
    }
    
    private func setupHierarchy(){
        view.addSubview(profileStackView)
        
        profileStackView.addArrangedSubview(avatarImage)
        profileStackView.addArrangedSubview(labelsStackView)
        
        labelsStackView.addArrangedSubview(nameLabel)
        labelsStackView.addArrangedSubview(buttonLabel)
        labelsStackView.addArrangedSubview(statusLabel)
    }
    
    private func setupLayout(){
        profileStackView.translatesAutoresizingMaskIntoConstraints = false
        
        profileStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        profileStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
        profileStackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 40).isActive = true
    }
    
    private func setupView(){
        view.backgroundColor = .systemBlue
    }


}

extension ViewController {
    enum Metric {
        static let ImageHeight: CGFloat = 75
    }
}

