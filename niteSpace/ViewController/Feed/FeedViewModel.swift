//
//  
//  FeedViewModel.swift
//  niteSpace
//
//  Created by Tiến Trần on 07/10/2022.
//
//

import UIKit

// MARK: - ViewModelProtocol
protocol FeedViewModelProtocol {
    func onViewDidLoad()
    
    //var variable: Int? { get set }
    //var listVariable: [Int] { get set }
}

// MARK: - Feed ViewModel
class FeedViewModel {
    weak var view: FeedViewProtocol?
    private var interactor: FeedInteractorInputProtocol

    init(interactor: FeedInteractorInputProtocol) {
        self.interactor = interactor
    }

    //var variable: Int?
    //var listVariable: [Int] = []
}

// MARK: - Feed ViewModelProtocol
extension FeedViewModel: FeedViewModelProtocol {
    func onViewDidLoad() {
        // Begin functions
    }
}

// MARK: - Feed InteractorOutputProtocol
extension FeedViewModel: FeedInteractorOutputProtocol {
    func onGet_DataNameFunction_Finished(with result: Result<EmptyModel, APIError>) {
        switch result {
        case .success(let model):
            // Handle Data
            break
            
        case .failure(let error):
            debugPrint(error)
        }
    }
    
    func onSet_DataNameFunction_Finished(with result: Result<EmptyModel, APIError>) {
        switch result {
        case .success(let model):
                // Handle Data
            break
            
        case .failure(let error):
            debugPrint(error)
        }
    }
}
