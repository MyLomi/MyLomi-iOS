//
//  DiscoverViewController.swift
//  MyLomi
//
//  Created by Yohannes on 8/10/23.
//

import UIKit

class DiscoverViewController: UIViewController {

    
    private let potentialImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Potential")
        imageView.layer.cornerRadius = 2
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()
    
    private let nameAgeLabel: UILabel = {
        let label = UILabel()
        label.text = "Melat, 23"
        label.font = .systemFont(ofSize: 24, weight: .medium)
        label.textColor = .white
        return label
    }()
    
    private let bioLabel: UILabel = {
        let label = UILabel()
        label.text = "Loves traveling"
        label.font = .systemFont(ofSize: 15, weight: .light)
        label.textColor = .white
        return label
    }()
    
    private let nopeBtn: MyLomiButton = {
        let button = MyLomiButton()
        button.setBackgroundImage(UIImage(systemName: "x.circle.fill"), for: .normal)
        button.tintColor = .red
        button.layer.cornerRadius = 22
        return button
    }()
    
    private let shootBtn: MyLomiButton = {
        let button = MyLomiButton()
        button.setBackgroundImage(UIImage(named: "LomiShoot"), for: .normal)
        button.layer.cornerRadius = 20
        return button
    }()
    
    private let likeBtn: MyLomiButton = {
        let button = MyLomiButton()
        button.setBackgroundImage(UIImage(systemName: "heart.fill"), for: .normal)
        button.tintColor = .red
        button.layer.cornerRadius = 22
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViews()
        applyConstraints()
    }

    private func setUpViews(){
        view.backgroundColor = .systemBackground
        let titleLabel: UILabel = {
            let label = UILabel()
            label.text = "Discover"
            label.font = .systemFont(ofSize: 28, weight: .semibold)
            label.textColor = .black
            return label
        }()
        navigationItem.setLeftBarButton(UIBarButtonItem(customView: titleLabel), animated: true)
        view.addSubview(potentialImageView)
        view.addSubview(nameAgeLabel)
        view.addSubview(bioLabel)
        nopeBtn.addTarget(self, action: #selector(didTapNope), for: .touchUpInside)
        view.addSubview(nopeBtn)
        shootBtn.addTarget(self, action: #selector(didTapShoot), for: .touchUpInside)
        view.addSubview(shootBtn)
        likeBtn.addTarget(self, action: #selector(didTapLike), for: .touchUpInside)
        view.addSubview(likeBtn)
    }
    
    private func applyConstraints(){
        potentialImageView.translatesAutoresizingMaskIntoConstraints = false
        nameAgeLabel.translatesAutoresizingMaskIntoConstraints = false
        bioLabel.translatesAutoresizingMaskIntoConstraints = false
        nopeBtn.translatesAutoresizingMaskIntoConstraints = false
        shootBtn.translatesAutoresizingMaskIntoConstraints = false
        likeBtn.translatesAutoresizingMaskIntoConstraints = false
        
        let imageConstraints = [
            potentialImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            potentialImageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 36),
            potentialImageView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -36),
            potentialImageView.heightAnchor.constraint(equalToConstant: 491)
        ]
        
        let nameAgeContraints = [
            nameAgeLabel.leadingAnchor.constraint(equalTo: potentialImageView.leadingAnchor, constant: 20),
            nameAgeLabel.widthAnchor.constraint(equalToConstant: 300),
            nameAgeLabel.topAnchor.constraint(equalTo: potentialImageView.topAnchor, constant: 432),
            nameAgeLabel.heightAnchor.constraint(equalToConstant: 26)
        ]
        
        let bioConstraints = [
            bioLabel.leadingAnchor.constraint(equalTo: potentialImageView.leadingAnchor, constant: 20),
            bioLabel.widthAnchor.constraint(equalToConstant: 300),
            bioLabel.topAnchor.constraint(equalTo: nameAgeLabel.bottomAnchor, constant: 7),
            bioLabel.heightAnchor.constraint(equalToConstant: 17)
        ]
        
        let nopeConstraints = [
            nopeBtn.topAnchor.constraint(equalTo: potentialImageView.bottomAnchor, constant: 56),
            nopeBtn.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 52),
            nopeBtn.widthAnchor.constraint(equalToConstant: 44),
            nopeBtn.heightAnchor.constraint(equalToConstant: 44)
        ]
        
        let shootConstraints = [
            shootBtn.topAnchor.constraint(equalTo: potentialImageView.bottomAnchor, constant: 51),
            shootBtn.leadingAnchor.constraint(equalTo: nopeBtn.trailingAnchor, constant: 16),
            shootBtn.trailingAnchor.constraint(equalTo: likeBtn.leadingAnchor, constant: -16),
            shootBtn.heightAnchor.constraint(equalToConstant: 53)
        ]
        
        let likeConstraints = [
            likeBtn.topAnchor.constraint(equalTo: potentialImageView.bottomAnchor, constant: 56),
            likeBtn.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -52),
            likeBtn.widthAnchor.constraint(equalToConstant: 44),
            likeBtn.heightAnchor.constraint(equalToConstant: 44)
        ]
        
        
        
        NSLayoutConstraint.activate(imageConstraints)
        NSLayoutConstraint.activate(nameAgeContraints)
        NSLayoutConstraint.activate(bioConstraints)
        NSLayoutConstraint.activate(nopeConstraints)
        NSLayoutConstraint.activate(shootConstraints)
        NSLayoutConstraint.activate(likeConstraints)
    }
    
    @objc func didTapShoot(){
        shootBtn.shakeButton()
    }
    
    @objc func didTapNope(){
        nopeBtn.shakeButton()
    }
    
    @objc func didTapLike(){
        likeBtn.shakeButton()
    }
    
}
