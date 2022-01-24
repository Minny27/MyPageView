//
//  ViewController.swift
//  MyPageView
//
//  Created by SeungMin on 2022/01/24.
//

import UIKit

class MyPageViewController: UIViewController {

    // MARK: - Properties
    let dataTableViewModel = DataTableViewModel()
    
    
    // MARK: - LifeCycles
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }

    let dataTableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .blue.withAlphaComponent(0.7)
        tableView.separatorStyle = .none
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.sectionHeaderTopPadding = .zero
        return tableView
    }()
    
    func configureUI() {
        view.backgroundColor = .white
        
        view.addSubview(dataTableView)
        
        dataTableView.register(
            DataTableViewCell.self,
            forCellReuseIdentifier: DataTableViewCell.identifier
        )
        
        dataTableView.dataSource = self
        dataTableView.delegate = self
        
        dataTableView.tableHeaderView = TopHeader(frame: CGRect(
            x: 0,
            y: 0,
            width: view.frame.width,
            height: 260
        ))
        
        NSLayoutConstraint.activate([
            dataTableView.topAnchor.constraint(equalTo: view.topAnchor),
            dataTableView.leftAnchor.constraint(equalTo: view.leftAnchor),
            dataTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            dataTableView.rightAnchor.constraint(equalTo: view.rightAnchor),
        ])
    }
}

extension MyPageViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let sectionType = SectionType(rawValue: section)!
        
        switch sectionType {
        case .information:
            return dataTableViewModel.firstSectionDataList.count
        case .setting:
            return dataTableViewModel.SecondSectionDataList.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let sectionType = SectionType(rawValue: indexPath.section)!
        var data: DataModel?
        
        let cell = tableView.dequeueReusableCell(
            withIdentifier: DataTableViewCell.identifier,
            for: indexPath
        ) as! DataTableViewCell
        
        switch sectionType {
        case .information:
            data = dataTableViewModel.firstSectionDataList[indexPath.row]
        case .setting:
            data = dataTableViewModel.SecondSectionDataList[indexPath.row]
        }
        
        cell.configureCell()
        cell.updateCell(data: data!)
        cell.selectionStyle = .none
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let sectionType = SectionType(rawValue: section)!
        
        switch sectionType {
        case .information:
            return FirstSectionHeader()
        case .setting:
            return SecondSectionHeader()
        }
    }
}

extension MyPageViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
}
