//
//  LoginViewController.swift
//  MyLomi
//
//  Created by Yohannes on 5/11/23.
//

import UIKit

class LoginViewController: UIViewController {
    
    private let welcomeLabel: UILabel = {
        let label = UILabel()
        let text = "Welcome to \nMyLomi"
        let attributedString = NSMutableAttributedString(string: text)
        attributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor(named: "AccentColor") ?? UIColor.red, range: NSRange(location: 12, length: 6))
        label.attributedText = attributedString
        label.font = .systemFont(ofSize: 42, weight: .bold)
        label.textAlignment = .left
        label.numberOfLines = 2
        return label
    }()
    
    private let emailTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Email Address"
        textField.layer.cornerRadius = 30
        textField.layer.borderColor = UIColor(named: "BorderColor")?.cgColor
        textField.layer.borderWidth = 1
        textField.keyboardType = .emailAddress
        textField.leftViewMode = .always
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 16, height: 30))
        return textField
    }()
    
    private let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Password"
        textField.layer.cornerRadius = 30
        textField.layer.borderColor = UIColor(named: "BorderColor")?.cgColor
        textField.layer.borderWidth = 1
        textField.leftViewMode = .always
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 16, height: 30))
        textField.isSecureTextEntry = true
        return textField
    }()
    
    private let forgotPasswordLabel: UILabel = {
        let label = UILabel()
        label.isUserInteractionEnabled = true
        label.font = .systemFont(ofSize: 13, weight: .regular)
        label.text = "Forgot password?"
        label.textColor = .black
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViews()
        applyConstraints()
    }
    
    private func setUpViews(){
        view.backgroundColor = .systemBackground
        view.addSubview(welcomeLabel)
        view.addSubview(emailTextField)
        view.addSubview(passwordTextField)
        view.addSubview(forgotPasswordLabel)
        view.addSubview(loginBtn)
    }
    
    private func applyConstraints(){
        welcomeLabel.translatesAutoresizingMaskIntoConstraints = false
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        forgotPasswordLabel.translatesAutoresizingMaskIntoConstraints = false
        loginBtn.translatesAutoresizingMaskIntoConstraints = false
        
        let welcomeConstraints = [
            welcomeLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40),
            welcomeLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: (view.bounds.width - 342)/2),
            welcomeLabel.widthAnchor.constraint(equalToConstant: 342),
            welcomeLabel.heightAnchor.constraint(equalToConstant: 104)
        ]
        
        let emailConstraints = [
            emailTextField.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 260),
            emailTextField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: (view.bounds.width - 342)/2),
            emailTextField.widthAnchor.constraint(equalToConstant: 342),
            emailTextField.heightAnchor.constraint(equalToConstant: 61)
        ]
        
        let passwordConstraints = [
            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 24),
            passwordTextField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: (view.bounds.width - 342)/2),
            passwordTextField.widthAnchor.constraint(equalToConstant: 342),
            passwordTextField.heightAnchor.constraint(equalToConstant: 61)
        ]
        
        let forgotConstraints = [
            forgotPasswordLabel.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 12),
            forgotPasswordLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -45),
            forgotPasswordLabel.widthAnchor.constraint(equalToConstant: 116),
            forgotPasswordLabel.heightAnchor.constraint(equalToConstant: 19)
        ]
        
        let loginBtnConstraints = [
            loginBtn.topAnchor.constraint(equalTo: forgotPasswordLabel.bottomAnchor, constant: 113),
            loginBtn.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: (view.bounds.width - 342)/2),
            loginBtn.widthAnchor.constraint(equalToConstant: 342),
            loginBtn.heightAnchor.constraint(equalToConstant: 61)
        ]
        
        
        NSLayoutConstraint.activate(welcomeConstraints)
        NSLayoutConstraint.activate(emailConstraints)
        NSLayoutConstraint.activate(passwordConstraints)
        NSLayoutConstraint.activate(forgotConstraints)
        NSLayoutConstraint.activate(loginBtnConstraints)
        
    }
}
