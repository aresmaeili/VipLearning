//
//  AremRouter.swift
//  VIPLearning
//
//  Created by Alireza on 11/9/1401 AP.
//  Copyright © 1401 AP ___ORGANIZATIONNAME___. All rights reserved.
//
//  Generated by CleanSwiftGenerator
//

import UIKit

protocol AremRoutingLogic {
    
}

protocol AremDataPassing {
    var dataStore: AremDataStore? { get }
}

class AremRouter: NSObject, AremRoutingLogic, AremDataPassing {
    private let sceneFactory: SceneFactory
    init(sceneFactory: SceneFactory) {
        self.sceneFactory = sceneFactory
    }
    
    // MARK: - Properties
    weak var viewController: AremViewController?
    var dataStore: AremDataStore?
    
    
}
