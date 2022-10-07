//
//  
//  FeedInteractorInput.swift
//  niteSpace
//
//  Created by Tiến Trần on 07/10/2022.
//
//

import UIKit

// MARK: - Interactor Input Protocol
protocol FeedInteractorInputProtocol {
    func get_DataNameFunction(param1: String, param2: Int)
    func set_DataNameFunction(param1: String, param2: Int)
}

// MARK: - Interactor Output Protocol
protocol FeedInteractorOutputProtocol: AnyObject {
    func onGet_DataNameFunction_Finished(with result: Result<EmptyModel, APIError>)
    func onSet_DataNameFunction_Finished(with result: Result<EmptyModel, APIError>)
}

// MARK: - Feed InteractorInput
class FeedInteractorInput {
    weak var output: FeedInteractorOutputProtocol?
}

// MARK: - Feed InteractorInputProtocol
extension FeedInteractorInput: FeedInteractorInputProtocol {
    func get_DataNameFunction(param1: String, param2: Int) {
        // Connect API
        // Data output
    }
    
    func set_DataNameFunction(param1: String, param2: Int) {
        // Connect API
        // Data output
    }
}
