//
//  MessageTableViewCell.swift
//  MyLomi
//
//  Created by Yohannes on 8/22/23.
//

import UIKit

class MessageTableViewCell: UITableViewCell {
    
    static let identifier = "MessageTableViewCell"
    
    private let profilePicImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = 25
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "Match")
        return imageView
    }()
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 15, weight: .bold)
        label.text = "Makeda Solomon"
        label.textAlignment = .left
        return label
    }()
    
    private let deliveredAtLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 12, weight: .light)
        label.textColor = UIColor(named: "DeliveredLabelColor")
        label.text = "3 min ago"
        label.textAlignment = .right
        return label
    }()
    
    private let messageLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 12, weight: .regular)
        label.textColor = UIColor(named: "DeliveredLabelColor")
        label.text = "That's so cute 😍"
        label.textAlignment = .left
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUpViews()
        applyConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpViews(){
        contentView.addSubview(profilePicImageView)
        contentView.addSubview(nameLabel)
        contentView.addSubview(deliveredAtLabel)
        contentView.addSubview(messageLabel)
    }
    
    private func applyConstraints(){
        profilePicImageView.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        deliveredAtLabel.translatesAutoresizingMaskIntoConstraints = false
        messageLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let profilePicConstraints = [
            profilePicImageView.topAnchor.constraint(equalTo: topAnchor, constant: 15),
            profilePicImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 25),
            profilePicImageView.widthAnchor.constraint(equalToConstant: 50),
            profilePicImageView.heightAnchor.constraint(equalToConstant: 50)
        ]
        
        let nameConstraints = [
            nameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            nameLabel.leadingAnchor.constraint(equalTo: profilePicImageView.trailingAnchor, constant: 24),
            nameLabel.widthAnchor.constraint(equalToConstant: 350),
            nameLabel.heightAnchor.constraint(equalToConstant: 21)
        ]
        
        let deliveredAtConstraints = [
            deliveredAtLabel.topAnchor.constraint(equalTo: topAnchor, constant: 23),
            deliveredAtLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -25),
            deliveredAtLabel.widthAnchor.constraint(equalToConstant: 70),
            deliveredAtLabel.heightAnchor.constraint(equalToConstant: 17)
        ]
        
        let messageConstraints = [
            messageLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 2),
            messageLabel.leadingAnchor.constraint(equalTo: profilePicImageView.trailingAnchor, constant: 24),
            messageLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -25),
            messageLabel.heightAnchor.constraint(equalToConstant: 17)
        ]
        
        NSLayoutConstraint.activate(profilePicConstraints)
        NSLayoutConstraint.activate(nameConstraints)
        NSLayoutConstraint.activate(deliveredAtConstraints)
        NSLayoutConstraint.activate(messageConstraints)
    }
    
}
