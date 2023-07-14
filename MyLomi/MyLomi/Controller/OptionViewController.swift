//
//  OptionViewController.swift
//  MyLomi
//
//  Created by Yohannes on 5/11/23.
//

import UIKit

class OptionViewController: UIViewController {

    private let logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "TempLogo")
        return imageView
    }()
    
    private let discoverLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 28, weight: .semibold)
        label.textColor = .black
        label.text = "Discover\nYour Dream Partner"
        label.textAlignment = .center
        label.numberOfLines = 2
        return label
    }()
    
    private let throwLabel: UILabel = {
        let label = UILabel()
        let myAttributedText = NSMutableAttributedString(string: "Throw a Lomi if you like someone \nand if you both like each other; it's a match")
        myAttributedText.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor(named: "AccentColor") ?? UIColor.red, range: NSRange(location: 66, length: 13))
        label.attributedText = myAttributedText
        label.font = .systemFont(ofSize: 15, weight: .regular)
        label.numberOfLines = 2
        label.textAlignment = .center
       return label
    }()
    
    private let loginBtn: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(named: "AccentColor")
        button.setTitle("Log in", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 22, weight: .medium)
        button.layer.cornerRadius = 30
        return button
    }()
    
    private let signUpBtn: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(named: "AccentColor")
        button.setTitle("Sign up", for: .normal)
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
        self.title = "Options"
        self.navigationItem.setHidesBackButton(true, animated: true)
        view.backgroundColor = .systemBackground
        view.addSubview(logoImageView)
        view.addSubview(discoverLabel)
        view.addSubview(throwLabel)
        view.addSubview(loginBtn)
        loginBtn.addTarget(self, action: #selector(loginTapped), for: .touchUpInside)
        view.addSubview(signUpBtn)
        signUpBtn.addTarget(self, action: #selector(signupTapped), for: .touchUpInside)
    }
    
    private func applyConstraints(){
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        discoverLabel.translatesAutoresizingMaskIntoConstraints = false
        throwLabel.translatesAutoresizingMaskIntoConstraints = false
        loginBtn.translatesAutoresizingMaskIntoConstraints = false
        signUpBtn.translatesAutoresizingMaskIntoConstraints = false
        
        let logoConstraints = [
            logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 115.3),
            logoImageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: (view.bounds.width - 218.44)/2),
            logoImageView.widthAnchor.constraint(equalToConstant: 218.44),
            logoImageView.heightAnchor.constraint(equalToConstant: 177.66)
        ]
        
        let discoverConstraints = [
            discoverLabel.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 42.04),
            discoverLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: (view.bounds.width - 300)/2),
            discoverLabel.widthAnchor.constraint(equalToConstant: 300),
            discoverLabel.heightAnchor.constraint(equalToConstant: 73)
        ]
        
        let throwConstraints = [
            throwLabel.topAnchor.constraint(equalTo: discoverLabel.bottomAnchor, constant: 16),
            throwLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: (view.bounds.width - 342)/2),
            throwLabel.widthAnchor.constraint(equalToConstant: 342),
            throwLabel.heightAnchor.constraint(equalToConstant: 42)
        ]
        
        let loginContraints = [
            loginBtn.topAnchor.constraint(equalTo: throwLabel.bottomAnchor, constant: 150),
            loginBtn.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: (view.bounds.width - 342)/2),
            loginBtn.widthAnchor.constraint(equalToConstant: 342),
            loginBtn.heightAnchor.constraint(equalToConstant: 61)
        ]
        
        let signUpConstraints = [
            signUpBtn.topAnchor.constraint(equalTo: loginBtn.bottomAnchor, constant: 15),
            signUpBtn.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: (view.bounds.width - 342)/2),
            signUpBtn.widthAnchor.constraint(equalToConstant: 342),
            signUpBtn.heightAnchor.constraint(equalToConstant: 61)
        ]
        
        NSLayoutConstraint.activate(logoConstraints)
        NSLayoutConstraint.activate(discoverConstraints)
        NSLayoutConstraint.activate(throwConstraints)
        NSLayoutConstraint.activate(loginContraints)
        NSLayoutConstraint.activate(signUpConstraints)
    }
    
    @objc
    func loginTapped(){
        let loginVC = LoginViewController()
        self.navigationController?.pushViewController(loginVC, animated: true)
    }

    @objc
    func signupTapped(){
        let signupVC = SignUpViewController()
        self.navigationController?.pushViewController(signupVC, animated: true)
    }
}
