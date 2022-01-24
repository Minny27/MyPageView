//
//  DataTableViewCell.swift
//  MyPageView
//
//  Created by SeungMin on 2022/01/24.
//

import UIKit

class DataTableViewCell: UITableViewCell {

    // MARK: - Properties
    static let identifier = "dataTableViewCell"
    
    let dataLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    func configureCell() {
        contentView.addSubview(dataLabel)
        
        NSLayoutConstraint.activate([
            dataLabel.topAnchor.constraint(equalTo: contentView.topAnchor),
            dataLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20),
            dataLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            dataLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor),
        ])
    }
    
    func updateCell(data: DataModel) {
        dataLabel.text = data.data
    }
}
