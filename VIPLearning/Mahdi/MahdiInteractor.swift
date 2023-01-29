//
//  MahdiInteractor.swift
//  VIPLearning
//
//  Created by Mahdi Saedi on 29/01/2023.
//  Copyright © 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//  Generated by CleanSwiftGenerator
//

import UIKit

protocol MahdiBusinessLogic {

}

protocol MahdiDataStore {
    
}

class MahdiInteractor: MahdiBusinessLogic, MahdiDataStore {
    // MARK: - Properties
    var presenter: MahdiPresentationLogic?
    var worker: MahdiWorkerLogic?
    
}
