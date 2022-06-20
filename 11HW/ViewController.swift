//
//  ViewController.swift
//  11HW
//
//  Created by Павел Бубликов on 13.06.2022.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var parentStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 15
        return stackView
    }()
    
    // MARK: - First block
    
    private lazy var avatarImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "my")
        image.layer.masksToBounds = true
        
        
        image.heightAnchor.constraint(equalToConstant: Metric.ImageHeight).isActive = true
        image.widthAnchor.constraint(equalToConstant: Metric.ImageHeight).isActive = true
        
        image.layer.cornerRadius = Metric.ImageHeight / 2
        
        return image
    }()
    
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
    
    // MARK: - Second block
    
    private lazy var controlsStackView: UIStackView = {
        let stackView = UIStackView()
        
        stackView.axis = .horizontal
        stackView.spacing = 0
        stackView.distribution = .fillEqually
        
        return stackView
    }()
    
    lazy var historyButton = createHorizontalButtons(with: "История", and: "camera")
    lazy var noteButton = createHorizontalButtons(with: "Запись", and: "square.and.pencil")
    lazy var photoButton = createHorizontalButtons(with: "Фото", and: "photo")
    lazy var clipButton = createHorizontalButtons(with: "Клип", and: "play.rectangle")
    
    // MARK: - Third block
    
    private lazy var oneLineView: UIView = {
        let view = UIView()
        view.heightAnchor.constraint(equalToConstant: 1).isActive = true
        view.backgroundColor = .darkGray
        return view
    }()
    
    private lazy var infoStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 0
        
        return stackView
    }()
    
    private lazy var firstInnerInfoStackView: UIStackView = getInnerInfoStackView()
    private lazy var secondInnerInfoStackView: UIStackView = getInnerInfoStackView()
    private lazy var thirdInnerInfoStackView: UIStackView = getInnerInfoStackView()
    private lazy var fourthInnerInfoStackView: UIStackView = getInnerInfoStackView()
    private lazy var fifthInnerInfoStackView: UIStackView = getInnerInfoStackView()
    
    private lazy var cityButton = createButtonWithLeadingImage(
        with: "Город: Москва",
        imageName: "house",
        color: .darkGray
    )
    
    private lazy var subsButton = createButtonWithLeadingImage(
        with: "35 подписчиков",
        imageName: "dot.radiowaves.up.forward",
        color: .darkGray
    )
    
    private lazy var workButton = createButtonWithLeadingImage(
        with: "Указать место работы",
        imageName: "bag",
        color: .systemCyan
    )
    
    private lazy var giftButton = createButtonWithLeadingImage(
        with: "Получить подарок",
        imageName: "snowflake",
        color: UIColor.init(red: 123/255, green: 3/255, blue: 252/255, alpha: 1)
    )
    
    private lazy var moreInfoButton = createButtonWithLeadingImage(
        with: "Подробная информация",
        imageName: "info.circle.fill",
        color: .white
    )
    
    // MARK: Setup

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupHierarchy()
        setupLayout()
        setupView()
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
        
        controlsStackView.addArrangedSubview(historyButton)
        controlsStackView.addArrangedSubview(noteButton)
        controlsStackView.addArrangedSubview(photoButton)
        controlsStackView.addArrangedSubview(clipButton)
        
        parentStackView.addArrangedSubview(oneLineView)
        
        parentStackView.addArrangedSubview(infoStackView)
        
        infoStackView.addArrangedSubview(firstInnerInfoStackView)
        infoStackView.addArrangedSubview(secondInnerInfoStackView)
        infoStackView.addArrangedSubview(thirdInnerInfoStackView)
        infoStackView.addArrangedSubview(fourthInnerInfoStackView)
        infoStackView.addArrangedSubview(fifthInnerInfoStackView)
    
        firstInnerInfoStackView.addArrangedSubview(cityButton)
        secondInnerInfoStackView.addArrangedSubview(subsButton)
        thirdInnerInfoStackView.addArrangedSubview(workButton)
        fourthInnerInfoStackView.addArrangedSubview(giftButton)
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
    
    // MARK: Utils
    
    private func getInnerInfoStackView() -> UIStackView {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 15
        
        return stackView
    }
    
    private func createButtonWithLeadingImage(with label: String, imageName: String, color: UIColor) -> UIButton {
        let button = UIButton(type: .system)
        button.layer.masksToBounds = true
        
        button.setTitle(label, for: .normal)
        button.tintColor = color
        button.setImage(.init(systemName: imageName), for: .normal)
        
        button.titleLabel?.font = .systemFont(ofSize: 10, weight: .semibold)
        button.contentHorizontalAlignment = .left
        
        button.configuration = UIButton.Configuration.plain()
        button.configuration?.imagePlacement = .leading
        button.configuration?.imagePadding = 20
        button.configuration?.contentInsets = .init(top: 5, leading: 5, bottom: 5, trailing: 5)
    
        return button
    }
    
    func createHorizontalButtons(with title: String, and icon: String ) -> UIButton {
        let button = UIButton(type: .system)
        button.layer.masksToBounds = true
        
        button.setTitle(title, for: .normal)
        button.tintColor = .systemCyan
        button.setImage(.init(systemName: icon), for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 10, weight: .semibold)
        
        button.configuration = UIButton.Configuration.plain()
        button.configuration?.imagePlacement = .top
        button.configuration?.imagePadding = 10
        button.configuration?.contentInsets = .init(top: 3, leading: 3, bottom: 3, trailing: 3)
    
        return button
    }

}

extension ViewController {
    enum Metric {
        
        // Тут изменила кодстайл константы
        static let ImageHeight: CGFloat = 100
    }
}

