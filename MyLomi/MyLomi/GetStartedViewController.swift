//
//  ViewController.swift
//  MyLomi
//
//  Created by Yohannes on 5/4/23.
//

import UIKit

class GetStartedViewController: UIViewController {
    
    private let logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "TempLogo")
        return imageView
    }()
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(named: "TextColor")
        label.font = .systemFont(ofSize: 34, weight: .semibold)
        label.text = "MyLomi"
        label.textAlignment = .center
        return label
    }()
    
    private let sloganLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(named: "TextColor")
        label.font = .systemFont(ofSize: 16, weight: .regular)
        label.text = "LOVE IS A LEMON AWAY"
        label.textAlignment = .center
        return label
    }()
    
    private let getStartedBtn: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(named: "AccentColor")
        button.setTitle("Get Started", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 22, weight: .medium)
        button.layer.cornerRadius = 30
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViews()
        applyConstraints()
    }
    
    private func setUpViews(){
        view.backgroundColor = .systemBackground
        view.addSubview(logoImageView)
        view.addSubview(nameLabel)
        view.addSubview(sloganLabel)
        view.addSubview(getStartedBtn)
    }
    
    private func applyConstraints(){
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        sloganLabel.translatesAutoresizingMaskIntoConstraints = false
        getStartedBtn.translatesAutoresizingMaskIntoConstraints = false
        
        let logoConstraints = [
            logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 163.1),
            logoImageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: (view.bounds.width - 192.4)/2),
            logoImageView.widthAnchor.constraint(equalToConstant: 192.4),
            logoImageView.heightAnchor.constraint(equalToConstant: 156.91)
        ]
        
        let nameConstraints = [
            nameLabel.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 14.99),
            nameLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: (view.bounds.width - 140)/2),
            nameLabel.widthAnchor.constraint(equalToConstant: 140),
            nameLabel.heightAnchor.constraint(equalToConstant: 48)
        ]
        
        let sloganConstraints = [
            sloganLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 16),
            sloganLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: (view.bounds.width - 348)/2),
            sloganLabel.widthAnchor.constraint(equalToConstant: 348),
            sloganLabel.heightAnchor.constraint(equalToConstant: 23)
        ]
        
        let getStartedConstraints = [
            getStartedBtn.topAnchor.constraint(equalTo: sloganLabel.bottomAnchor, constant: 248),
            getStartedBtn.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: (view.bounds.width - 342)/2),
            getStartedBtn.widthAnchor.constraint(equalToConstant: 342),
            getStartedBtn.heightAnchor.constraint(equalToConstant: 61)
        ]
        
        
        NSLayoutConstraint.activate(logoConstraints)
        NSLayoutConstraint.activate(nameConstraints)
        NSLayoutConstraint.activate(sloganConstraints)
        NSLayoutConstraint.activate(getStartedConstraints)
    }
    
    
    
    
}

