//
//  DataTableHeaderView.swift
//  MyPageView
//
//  Created by SeungMin on 2022/01/24.
//

import UIKit

class TopHeader: UIView {

    // MARK: - Properties
    let profileView: UIView = {
        let view = UIView()
        view.backgroundColor = .blue.withAlphaComponent(0.7)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "이승민"
        label.font = .boldSystemFont(ofSize: 25)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let typeLabel: UILabel = {
        let label = UILabel()
        label.text = "@iOS Developer | 개발만"
        label.font = .boldSystemFont(ofSize: 18)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let pictureImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.borderWidth = 2
        imageView.layer.borderColor = UIColor.white.cgColor
        imageView.image = UIImage(named: "image.jpg")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let contentView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 18
        view.translatesAutoresizingMaskIntoConstraints = false
        
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowRadius = 20
        view.layer.shadowOffset = CGSize(width: 0, height: 0)
        view.layer.shadowOpacity = 0.3
        return view
    }()
    
    let contentTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "나의 커밋 참여 횟수"
        label.font = .boldSystemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false

        return label
    }()
    
    let contentSubLabel: UILabel = {
        let label = UILabel()
        label.text = "25일 째"
        label.font = .boldSystemFont(ofSize: 40)
        label.translatesAutoresizingMaskIntoConstraints = false

        return label
    }()
    
    let contentButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "arrow.right"), for: .normal)
//        button.image

        button.tintColor = .white
        button.backgroundColor = .green.withAlphaComponent(0.8)
        button.layer.cornerRadius = 30
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    // MARK: - LifeCycles
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureView() {
        backgroundColor = .white
        
        addSubview(profileView)
        profileView.addSubview(nameLabel)
        profileView.addSubview(typeLabel)
        profileView.addSubview(pictureImageView)
        profileView.addSubview(contentView)
        contentView.addSubview(contentTitleLabel)
        contentView.addSubview(contentSubLabel)
        contentView.addSubview(contentButton)
        
        NSLayoutConstraint.activate([
            profileView.topAnchor.constraint(equalTo: topAnchor),
            profileView.leftAnchor.constraint(equalTo: leftAnchor),
            profileView.rightAnchor.constraint(equalTo: rightAnchor),
            profileView.heightAnchor.constraint(equalToConstant: 152),
            
            nameLabel.topAnchor.constraint(equalTo: profileView.topAnchor),
            nameLabel.leftAnchor.constraint(equalTo: profileView.leftAnchor, constant: 16),
            
            typeLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor),
            typeLabel.leftAnchor.constraint(equalTo: profileView.leftAnchor, constant: 16),
            
            pictureImageView.topAnchor.constraint(equalTo: profileView.topAnchor),
            pictureImageView.rightAnchor.constraint(
                equalTo: profileView.rightAnchor,
                constant: -16
            ),
            pictureImageView.widthAnchor.constraint(equalToConstant: 50),
            pictureImageView.heightAnchor.constraint(equalToConstant: 50),
            
            contentView.topAnchor.constraint(equalTo: typeLabel.bottomAnchor, constant: 27),
            contentView.centerXAnchor.constraint(equalTo: centerXAnchor),
            contentView.widthAnchor.constraint(equalToConstant: 343),
            contentView.heightAnchor.constraint(equalToConstant: 126),
            
            contentTitleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 24),
            contentTitleLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 24),
            
            contentSubLabel.topAnchor.constraint(equalTo: contentTitleLabel.bottomAnchor, constant: 8),
            contentSubLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 24),
            
            contentButton.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -24),
            contentButton.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            contentButton.widthAnchor.constraint(equalToConstant: 60),
            contentButton.heightAnchor.constraint(equalToConstant: 60),
        ])
    }
}
