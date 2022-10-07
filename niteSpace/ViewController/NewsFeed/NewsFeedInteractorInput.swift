//
//  
//  NewsFeedInteractorInput.swift
//  niteSpace
//
//  Created by Tiến Trần on 07/10/2022.
//
//

import UIKit

// MARK: - Interactor Input Protocol
protocol NewsFeedInteractorInputProtocol {
    func get_DataNameFunction(param1: String, param2: Int)
    func set_DataNameFunction(param1: String, param2: Int)
}

// MARK: - Interactor Output Protocol
protocol NewsFeedInteractorOutputProtocol: AnyObject {
    func onGet_DataNameFunction_Finished(with result: Result<EmptyModel, APIError>)
    func onSet_DataNameFunction_Finished(with result: Result<EmptyModel, APIError>)
}

// MARK: - NewsFeed InteractorInput
class NewsFeedInteractorInput {
    weak var output: NewsFeedInteractorOutputProtocol?
}

// MARK: - NewsFeed InteractorInputProtocol
extension NewsFeedInteractorInput: NewsFeedInteractorInputProtocol {
    func get_DataNameFunction(param1: String, param2: Int) {
        // Connect API
        // Data output
    }
    
    func set_DataNameFunction(param1: String, param2: Int) {
        // Connect API
        // Data output
    }
}
