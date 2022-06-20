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
        label.text = "Бубликов Павел"
        label.textColor = .white
        label.font = .systemFont(ofSize: 18, weight: .regular)
        label.textAlignment = .left

        return label
    }()
    
    private lazy var statusButton: UIButton = {
        let button = UIButton()
        button.setTitle("Установить статус", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 14, weight: .regular)
        button.titleLabel?.textAlignment = .left

        return button
    }()
    
    private lazy var editProfileButton: UIButton = {
        let button = UIButton()
        button.setTitle("Редактировать", for: .normal)
        button.backgroundColor = .darkGray
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 14, weight: .regular)
        button.layer.cornerRadius = 8

        return button
    }()
    
    private lazy var statusLabel: UILabel = {
        let label = UILabel()
        label.text = "online"
        label.textColor = .gray
        label.font = .systemFont(ofSize: 12, weight: .regular)
        label.textAlignment = .left

        return label
    }()
    
    private lazy var statusImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "iphone")
        image.tintColor = .gray
        image.widthAnchor.constraint(equalToConstant: 15).isActive = true
        
        return image
    }()

    private lazy var statusStackView: UIStackView = {
        let stackView = UIStackView()
        
        stackView.axis = .horizontal
        stackView.spacing = 2
        
        return stackView
    }()
    
    private lazy var labelsStackView: UIStackView = {
        let stackView = UIStackView()

        stackView.axis = .vertical
        stackView.spacing = 3
        stackView.alignment = .leading

        return stackView
    }()
    
    private lazy var profileStackView: UIStackView = {
        let stackView = UIStackView()
        
        stackView.axis = .horizontal
        stackView.spacing = 10
        
        return stackView
    }()
    
    private lazy var controlsStackView: UIStackView = {
        let stackView = UIStackView()
        
        stackView.axis = .horizontal
        stackView.spacing = 0
        stackView.distribution = .fillEqually
        
        return stackView
    }()
    
    private lazy var parentStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 15
        return stackView
    }()
    
    private lazy var avatarImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "my")
        image.layer.masksToBounds = true
        image.heightAnchor.constraint(equalToConstant: 70).isActive = true
        image.widthAnchor.constraint(equalToConstant: 70).isActive = true
        
        return image
    }()
    
    private lazy var hystoryButtonWithImage: UIButton = {
        let button = UIButton()
        let image = UIImage(systemName: "camera")

        button.setImage(image, for: .normal)
        button.tintColor = .systemBlue

        return button
    }()
    
    private lazy var hystoryButtonWithTitle: UIButton = {
        let button = UIButton()
        
        button.setTitle("История", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.titleLabel?.font =  .systemFont(ofSize: 12, weight: .regular)

        return button
    }()
    
    private lazy var hystoryButtonView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        return stackView
    }()
    
    private lazy var photoButtonWithImage: UIButton = {
        let button = UIButton()
        let image = UIImage(systemName: "photo")

        button.setImage(image, for: .normal)
        button.tintColor = .systemBlue

        return button
    }()
    
    private lazy var photoButtonWithTitle: UIButton = {
        let button = UIButton()
        
        button.setTitle("Фото", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.titleLabel?.font =  .systemFont(ofSize: 12, weight: .regular)

        return button
    }()
    
    private lazy var photoButtonView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        return stackView
    }()
    
    private lazy var noteButtonWithImage: UIButton = {
        let button = UIButton()
        let image = UIImage(systemName: "square.and.pencil")

        button.setImage(image, for: .normal)
        button.tintColor = .systemBlue

        return button
    }()
    
    private lazy var noteButtonWithTitle: UIButton = {
        let button = UIButton()
        
        button.setTitle("Запись", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.titleLabel?.font =  .systemFont(ofSize: 12, weight: .regular)

        return button
    }()
    
    private lazy var noteButtonView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        return stackView
    }()
    
    private lazy var clipButtonWithImage: UIButton = {
        let button = UIButton()
        let image = UIImage(systemName: "ipad.landscape.badge.play")

        button.setImage(image, for: .normal)
        button.tintColor = .systemBlue

        return button
    }()
    
    private lazy var clipButtonWithTitle: UIButton = {
        let button = UIButton()
        
        button.setTitle("Клип", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.titleLabel?.font =  .systemFont(ofSize: 12, weight: .regular)

        return button
    }()
    
    private lazy var clipButtonView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        return stackView
    }()
    
    private lazy var oneLineView: UIView = {
        let view = UIView()
        view.heightAnchor.constraint(equalToConstant: 1).isActive = true
        view.backgroundColor = .darkGray
        return view
    }()
    
    private lazy var infoStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 20
        
        return stackView
    }()
    
    private lazy var firstInnerInfoStackView: UIStackView = getInnerInfoStackView()
    private lazy var secondInnerInfoStackView: UIStackView = getInnerInfoStackView()
    private lazy var thirdInnerInfoStackView: UIStackView = getInnerInfoStackView()
    private lazy var fourthInnerInfoStackView: UIStackView = getInnerInfoStackView()
    private lazy var fifthInnerInfoStackView: UIStackView = getInnerInfoStackView()
    
    private func getInnerInfoStackView() -> UIStackView {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 15
        
        return stackView
    }
    
    private lazy var cityLabel: UILabel = {
        let label = UILabel()
        label.text = "Город: Москва"
        label.textColor = .darkGray
        label.font = .systemFont(ofSize: 14)
        label.textAlignment = .left

        return label
    }()
    
    private lazy var subsLabel: UILabel = {
        let label = UILabel()
        label.text = "35 подписчиков"
        label.textColor = .darkGray
        label.font = .systemFont(ofSize: 14)
        label.textAlignment = .left

        return label
    }()
    
    private lazy var workButton: UIButton = {
        let button = UIButton()
        let image = UIImage(systemName: "camera")

        button.setImage(image, for: .normal)
        button.setTitle("Указать место работы", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.titleLabel?.font =  .systemFont(ofSize: 14, weight: .regular)
        button.contentHorizontalAlignment = .left

        return button
    }()
    
    private lazy var giftButton: UIButton = {
        let button = UIButton()
        let image = UIImage(systemName: "camera")

        button.setImage(image, for: .normal)
        button.setTitle("Получить подарок", for: .normal)
        button.setTitleColor(UIColor(red: 123, green: 3, blue: 252, alpha: 1), for: .normal)
        button.titleLabel?.font =  .systemFont(ofSize: 14, weight: .regular)
        button.contentHorizontalAlignment = .left

        return button
    }()
    
    private lazy var moreInfoButton: UIButton = {
        var config = UIButton.Configuration.tinted()
        config.imagePadding = 15
        let button = UIButton(configuration: config)
        let image = UIImage(systemName: "info.circle.fill")
        
        button.setImage(image, for: .normal)
        button.setTitle("Подробная информация", for: .normal)
        button.tintColor = .white
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font =  .systemFont(ofSize: 14, weight: .regular)
        button.contentHorizontalAlignment = .left

        return button
    }()
    
    private lazy var cityImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "house")
        image.layer.masksToBounds = true
        image.tintColor = .gray
        image.widthAnchor.constraint(equalToConstant: 25).isActive = true
        
        return image
    }()
    
    private lazy var subsImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "dot.radiowaves.up.forward")
        image.layer.masksToBounds = true
        image.tintColor = .gray
        image.widthAnchor.constraint(equalToConstant: 25).isActive = true
        image.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        return image
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupHierarchy()
        setupLayout()
        setupView()
        
        avatarImage.layer.cornerRadius = avatarImage.frame.width / 2
    }
    
    private func setupHierarchy(){
        view.addSubview(parentStackView)
        
        parentStackView.addArrangedSubview(profileStackView)
        
            profileStackView.addArrangedSubview(avatarImage)
            profileStackView.addArrangedSubview(labelsStackView)

                labelsStackView.addArrangedSubview(nameLabel)
                labelsStackView.addArrangedSubview(statusButton)
                labelsStackView.addArrangedSubview(statusStackView)
        
                    statusStackView.addArrangedSubview(statusLabel)
                    statusStackView.addArrangedSubview(statusImage)
        
        parentStackView.addArrangedSubview(editProfileButton)
        
        parentStackView.addArrangedSubview(controlsStackView)
        
            controlsStackView.addArrangedSubview(hystoryButtonView)
            controlsStackView.addArrangedSubview(noteButtonView)
            controlsStackView.addArrangedSubview(photoButtonView)
            controlsStackView.addArrangedSubview(clipButtonView)
            
                photoButtonView.addArrangedSubview(photoButtonWithImage)
                photoButtonView.addArrangedSubview(photoButtonWithTitle)
            
                noteButtonView.addArrangedSubview(noteButtonWithImage)
                noteButtonView.addArrangedSubview(noteButtonWithTitle)
            
                hystoryButtonView.addArrangedSubview(hystoryButtonWithImage)
                hystoryButtonView.addArrangedSubview(hystoryButtonWithTitle)
            
                clipButtonView.addArrangedSubview(clipButtonWithImage)
                clipButtonView.addArrangedSubview(clipButtonWithTitle)
        
        parentStackView.addArrangedSubview(oneLineView)
        
        parentStackView.addArrangedSubview(infoStackView)
        
            infoStackView.addArrangedSubview(firstInnerInfoStackView)
            infoStackView.addArrangedSubview(secondInnerInfoStackView)
            infoStackView.addArrangedSubview(thirdInnerInfoStackView)
            infoStackView.addArrangedSubview(fourthInnerInfoStackView)
            infoStackView.addArrangedSubview(fifthInnerInfoStackView)
        
                firstInnerInfoStackView.addArrangedSubview(cityImage)
                firstInnerInfoStackView.addArrangedSubview(cityLabel)
        
                secondInnerInfoStackView.addArrangedSubview(subsImage)
                secondInnerInfoStackView.addArrangedSubview(subsLabel)
                
                thirdInnerInfoStackView.addArrangedSubview(workButton)
                thirdInnerInfoStackView.addArrangedSubview(workButton)
                
                fourthInnerInfoStackView.addArrangedSubview(giftButton)
                fourthInnerInfoStackView.addArrangedSubview(giftButton)
                
                fifthInnerInfoStackView.addArrangedSubview(moreInfoButton)
                fifthInnerInfoStackView.addArrangedSubview(moreInfoButton)
    }
    
    private func setupLayout(){
        parentStackView.translatesAutoresizingMaskIntoConstraints = false
        
        parentStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        parentStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
        parentStackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 40).isActive = true
        
        editProfileButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
    
    private func setupView(){
        view.backgroundColor = .black
    }


}

extension ViewController {
    enum Metric {
        static let ImageHeight: CGFloat = 75
    }
}

