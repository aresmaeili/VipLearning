//
//  AremPresenter.swift
//  VIPLearning
//
//  Created by Alireza on 11/9/1401 AP.
//  Copyright © 1401 AP ___ORGANIZATIONNAME___. All rights reserved.
//
//  Generated by CleanSwiftGenerator
//

import UIKit

protocol FirstPresentationLogic {
    func getPersonName(data: FirstDatas, index: Int)
    func getPersonData(data: FirstDatas, index: Int)
}

class FirstPresenter: FirstPresentationLogic {
    // MARK: - Properties
    private weak var viewController: (FirstDisplayLogic)?
    init(viewController: FirstDisplayLogic) {
        self.viewController = viewController
    }
    
    func getPersonName(data: FirstDatas, index: Int) {
        let viewModel: FirstViewModel = FirstViewModel(name: data[index].name)
        viewController?.showNextName(viewModel: viewModel, data: data[index])
    }
    
    func getPersonData(data: FirstDatas, index: Int) {
        let person = data[index]
        let viewModel: ViewModel = ViewModel(name:person.name , gender: person.gender.rawValue, house: person.house.rawValue, birth: person.house.rawValue, year: person.yearOfBirth?.description ?? "", alive: person.alive)
        viewController?.showDetail(viewModel: viewModel)
    }
}

struct FirstViewModel {
    var name: String
}

struct ViewModel {
    var name: String
    var gender: String
    var house: String
    var birth: String
    var year: String
    var alive: Bool
}