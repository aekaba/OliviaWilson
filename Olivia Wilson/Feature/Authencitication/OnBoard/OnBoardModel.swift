//
//  OnBoardModel.swift
//  Olivia Wilson
//
//  Created by Ata emir on 21.10.2022.
//

import Foundation

struct OnBoardModel: Identifiable {
    var id: UUID = UUID()
    
    let imageName: String
    let describtion: String
    
    static let items: [OnBoardModel] = [
        OnBoardModel(imageName: "img_woman", describtion: "You Looks Good"),
        OnBoardModel(imageName: "img_jewelry", describtion: "Thats Better"),
        OnBoardModel(imageName: "img_shopping", describtion: "On The Time")
    ]
}

