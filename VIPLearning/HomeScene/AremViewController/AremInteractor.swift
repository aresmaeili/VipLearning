//
//  AremInteractor.swift
//  VIPLearning
//
//  Created by Alireza on 11/9/1401 AP.
//  Copyright © 1401 AP ___ORGANIZATIONNAME___. All rights reserved.
//
//  Generated by CleanSwiftGenerator
//

import UIKit

protocol FirstBusinessLogic {

}

protocol FirstDataStore {
    func getDataFromJson()
    func getRoutingData()
}

class FirstInteractor {
    // MARK: - Properties
    var presenter: FirstPresentationLogic?
    var worker: FirstWorkerLogic?
    
    private var index = -1

    func addIndexValue(dataCount: Int){
        if index != dataCount {
            index += 1
        } else {
            index = 0
        }
    }
}

extension FirstInteractor: FirstBusinessLogic, FirstDataStore {
    
    func getDataFromJson(){
        guard let data = worker?.getData() else { fatalError("No data")}
        addIndexValue(dataCount: data.count)
        presenter?.getPersonName(data: data, index: index)
    }
    
    func getRoutingData(){
//        completion
        guard let data = worker?.getData() else { fatalError("No data")}
        presenter?.getPersonData(data: data, index: index)
    }
    
}
