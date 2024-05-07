//
//  SignUpViewController.swift
//  MyLomi
//
//  Created by Yohannes on 7/14/23.
//

import UIKit

class SignUpViewController: UIViewController {

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
    
    private let firstNameTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "First Name"
        textField.layer.cornerRadius = 30
        textField.layer.borderColor = UIColor(named: "BorderColor")?.cgColor
        textField.layer.borderWidth = 1
        textField.leftViewMode = .always
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 16, height: 30))
        return textField
    }()
    
    private let phoneNumberTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Phone Number"
        textField.layer.cornerRadius = 30
        textField.layer.borderColor = UIColor(named: "BorderColor")?.cgColor
        textField.layer.borderWidth = 1
        textField.keyboardType = .phonePad
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
        textField.isSecureTextEntry = true
        textField.leftViewMode = .always
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 16, height: 30))
        return textField
    }()
    
    private let genderTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Gender"
        textField.layer.cornerRadius = 30
        textField.layer.borderColor = UIColor(named: "BorderColor")?.cgColor
        textField.layer.borderWidth = 1
        textField.keyboardType = .phonePad
        textField.leftViewMode = .always
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 16, height: 30))
        return textField
    }()
    
    private let birthdayTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Birthday"
        textField.layer.cornerRadius = 30
        textField.layer.borderColor = UIColor(named: "BorderColor")?.cgColor
        textField.layer.borderWidth = 1
        textField.keyboardType = .phonePad
        textField.leftViewMode = .always
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 16, height: 30))
        return textField
    }()
    
    private let checkboxImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.borderWidth = 2
        imageView.layer.borderColor = UIColor(named: "BorderColor")?.cgColor
        imageView.layer.cornerRadius = 3
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private let agreementLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(named: "LameTextColor")
        label.font = .systemFont(ofSize: 12, weight: .regular)
        label.text = "I agree to terms and conditions"
        return label
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
    
    private let loginLabel: UILabel = {
        let label = UILabel()
        let text = "Already have an account? Login"
        let attributedString = NSMutableAttributedString(string: text)
        attributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor(named: "AccentColor") ?? UIColor.red, range: NSRange(location: 25, length: 5))
        label.attributedText = attributedString
        label.font = .systemFont(ofSize: 15, weight: .regular)
        label.textAlignment = .center
        label.isUserInteractionEnabled = true
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViews()
        applyConstraints()
    }
    
    private func setUpViews(){
        self.title = "Signup"
        view.backgroundColor = .systemBackground
        view.addSubview(welcomeLabel)
        view.addSubview(firstNameTextField)
        view.addSubview(phoneNumberTextField)
        view.addSubview(passwordTextField)
        view.addSubview(genderTextField)
        view.addSubview(birthdayTextField)
        view.addSubview(checkboxImageView)
        view.addSubview(agreementLabel)
        view.addSubview(signUpBtn)
        view.addSubview(loginLabel)
        let gesture = UITapGestureRecognizer(target: self, action: #selector(loginLabelTapped))
        loginLabel.addGestureRecognizer(gesture)
    }
    
    private func applyConstraints(){
        welcomeLabel.translatesAutoresizingMaskIntoConstraints = false
        firstNameTextField.translatesAutoresizingMaskIntoConstraints = false
        phoneNumberTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        genderTextField.translatesAutoresizingMaskIntoConstraints = false
        birthdayTextField.translatesAutoresizingMaskIntoConstraints = false
        checkboxImageView.translatesAutoresizingMaskIntoConstraints = false
        agreementLabel.translatesAutoresizingMaskIntoConstraints = false
        signUpBtn.translatesAutoresizingMaskIntoConstraints = false
        loginLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let welcomeConstraints = [
            welcomeLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            welcomeLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 35),
            welcomeLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -35),
            welcomeLabel.heightAnchor.constraint(equalToConstant: 104)
        ]
        
        let firstNameConstraints = [
            firstNameTextField.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 31),
            firstNameTextField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 35),
            firstNameTextField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -35),
            firstNameTextField.heightAnchor.constraint(equalToConstant: 60)
        ]
        
        let phoneConstraints = [
            phoneNumberTextField.topAnchor.constraint(equalTo: firstNameTextField.bottomAnchor, constant: 24),
            phoneNumberTextField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 35),
            phoneNumberTextField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -35),
            phoneNumberTextField.heightAnchor.constraint(equalToConstant: 60)
        ]
        
        let passwordConstraints = [
            passwordTextField.topAnchor.constraint(equalTo: phoneNumberTextField.bottomAnchor, constant: 24),
            passwordTextField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 35),
            passwordTextField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -35),
            passwordTextField.heightAnchor.constraint(equalToConstant: 60)
        ]
        
        let genderConstraints = [
            genderTextField.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 24),
            genderTextField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 35),
            genderTextField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -35),
            genderTextField.heightAnchor.constraint(equalToConstant: 60)
        ]
        
        let birthdayConstraints = [
            birthdayTextField.topAnchor.constraint(equalTo: genderTextField.bottomAnchor, constant: 24),
            birthdayTextField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 35),
            birthdayTextField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -35),
            birthdayTextField.heightAnchor.constraint(equalToConstant: 60)
        ]
        
        let checkboxConstraints = [
            checkboxImageView.topAnchor.constraint(equalTo: birthdayTextField.bottomAnchor, constant: 15),
            checkboxImageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 36),
            checkboxImageView.widthAnchor.constraint(equalToConstant: 15),
            checkboxImageView.heightAnchor.constraint(equalToConstant: 15)
        ]
        
        let agreementConstraints = [
            agreementLabel.topAnchor.constraint(equalTo: birthdayTextField.bottomAnchor, constant: 17),
            agreementLabel.leadingAnchor.constraint(equalTo: checkboxImageView.trailingAnchor, constant: 8),
            agreementLabel.widthAnchor.constraint(equalToConstant: 260),
            agreementLabel.heightAnchor.constraint(equalToConstant: 17)
        ]
        
        let signUpConstraints = [
            signUpBtn.topAnchor.constraint(equalTo: agreementLabel.bottomAnchor, constant: 48),
            signUpBtn.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 36),
            signUpBtn.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -36),
            signUpBtn.heightAnchor.constraint(equalToConstant: 60)
        ]
        
        let loginConstraints = [
            loginLabel.topAnchor.constraint(equalTo: signUpBtn.bottomAnchor, constant: 12),
            loginLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 35),
            loginLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -35),
            loginLabel.heightAnchor.constraint(equalToConstant: 21)
        ]
        
        NSLayoutConstraint.activate(welcomeConstraints)
        NSLayoutConstraint.activate(firstNameConstraints)
        NSLayoutConstraint.activate(phoneConstraints)
        NSLayoutConstraint.activate(passwordConstraints)
        NSLayoutConstraint.activate(genderConstraints)
        NSLayoutConstraint.activate(birthdayConstraints)
        NSLayoutConstraint.activate(checkboxConstraints)
        NSLayoutConstraint.activate(agreementConstraints)
        NSLayoutConstraint.activate(signUpConstraints)
        NSLayoutConstraint.activate(loginConstraints)
    }

    @objc
    private func loginLabelTapped(){
        let loginVC = LoginViewController()
        navigationController?.pushViewController(loginVC, animated: true)
    }

}
