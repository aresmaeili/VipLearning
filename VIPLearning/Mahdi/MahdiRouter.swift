//
//  MahdiRouter.swift
//  VIPLearning
//
//  Created by Mahdi Saedi on 29/01/2023.
//  Copyright © 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//  Generated by CleanSwiftGenerator
//

import UIKit

protocol MahdiRoutingLogic {
    
}

protocol MahdiDataPassing {
    var dataStore: MahdiDataStore? { get }
}

class MahdiRouter: NSObject, MahdiRoutingLogic, MahdiDataPassing {
    private let sceneFactory: SceneFactory
    private weak var viewController: MahdiViewController?
    init(sceneFactory: SceneFactory, viewController: MahdiViewController) {
        self.sceneFactory = sceneFactory
        self.viewController = viewController
    }
    
    // MARK: - Properties
    var dataStore: MahdiDataStore?
}
