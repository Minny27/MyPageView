//
//  DataTableViewModel.swift
//  MyPageView
//
//  Created by SeungMin on 2022/01/24.
//

import Foundation

final class DataTableViewModel {
    let firstSectionDataList: [DataModel] = [
        DataModel(data: "프로필 수정"),
        DataModel(data: "앱 버전 1.0.0"),
        DataModel(data: "공지사항"),
        DataModel(data: "브릿지에 대해서"),
    ]
    
    let SecondSectionDataList: [DataModel] = [
        DataModel(data: "로그아웃"),
        DataModel(data: "회원탈퇴"),
    ]
}
