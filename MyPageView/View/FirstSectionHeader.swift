//
//  FirstSectionHeader.swift
//  MyPageView
//
//  Created by SeungMin on 2022/01/24.
//

import UIKit

class FirstSectionHeader: UIView {
    
    // MARK: - Properties
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "기본 정보"
        label.font = .boldSystemFont(ofSize: 17)
        label.textColor = .lightGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
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
        
        addSubview(titleLabel)
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: topAnchor),
            titleLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 20),
            titleLabel.bottomAnchor.constraint(equalTo: bottomAnchor),
            titleLabel.rightAnchor.constraint(equalTo: rightAnchor)
        ])
    }
}
