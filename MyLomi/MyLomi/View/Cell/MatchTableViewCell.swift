//
//  MatchTableViewCell.swift
//  MyLomi
//
//  Created by Yohannes Aklilu Haile on 10/19/23.
//

import UIKit

class MatchTableViewCell: UITableViewCell {

    static let identifier = "MatchTableViewCell"
    
    private let profilePicImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = 25
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "OtherMatch")
        return imageView
    }()

    private let nameLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 15, weight: .bold)
        label.text = "Nigist Habtamu"
        label.textAlignment = .left
        return label
    }()

    private let sentLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 12, weight: .regular)
        label.text = "2 hours ago"
        label.textColor = UIColor(named: "DeliveredLabelColor")
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
        contentView.addSubview(sentLabel)
    }
    
    private func applyConstraints(){
        profilePicImageView.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        sentLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let profileConstraints = [
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
        
        let sentConstraints = [
            sentLabel.topAnchor.constraint(equalTo: topAnchor, constant: 23),
            sentLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -25),
            sentLabel.widthAnchor.constraint(equalToConstant: 70),
            sentLabel.heightAnchor.constraint(equalToConstant: 17)
        ]
        
        NSLayoutConstraint.activate(profileConstraints)
        NSLayoutConstraint.activate(nameConstraints)
        NSLayoutConstraint.activate(sentConstraints)
        
    }
    
}
