//
//  SecondSectionHeaderView.swift
//  MyPageView
//
//  Created by SeungMin on 2022/01/24.
//

import UIKit

class SecondSectionHeader: UIView {

    // MARK: - Properties
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "설정"
        label.font = .boldSystemFont(ofSize: 17)
        label.textColor = .lightGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let lineView: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
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
        
        addSubview(lineView)
        addSubview(titleLabel)
        
        NSLayoutConstraint.activate([
            lineView.topAnchor.constraint(equalTo: topAnchor, constant: 12),
            lineView.leftAnchor.constraint(equalTo: leftAnchor, constant: 16),
            lineView.rightAnchor.constraint(equalTo: rightAnchor, constant: -16),
            lineView.heightAnchor.constraint(equalToConstant: 1),
            
            titleLabel.topAnchor.constraint(equalTo: lineView.bottomAnchor, constant: 23),
            titleLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 20),
            titleLabel.bottomAnchor.constraint(equalTo: bottomAnchor),
            titleLabel.rightAnchor.constraint(equalTo: rightAnchor)
        ])
    }
}
