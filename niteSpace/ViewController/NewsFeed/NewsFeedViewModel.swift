//
//  
//  NewsFeedViewModel.swift
//  niteSpace
//
//  Created by Tiến Trần on 07/10/2022.
//
//

import UIKit

// MARK: - ViewModelProtocol
protocol NewsFeedViewModelProtocol {
    func onViewDidLoad()
    
    //var variable: Int? { get set }
    //var listVariable: [Int] { get set }
}

// MARK: - NewsFeed ViewModel
class NewsFeedViewModel {
    weak var view: NewsFeedViewProtocol?
    private var interactor: NewsFeedInteractorInputProtocol

    init(interactor: NewsFeedInteractorInputProtocol) {
        self.interactor = interactor
    }

    //var variable: Int?
    //var listVariable: [Int] = []
}

// MARK: - NewsFeed ViewModelProtocol
extension NewsFeedViewModel: NewsFeedViewModelProtocol {
    func onViewDidLoad() {
        // Begin functions
    }
}

// MARK: - NewsFeed InteractorOutputProtocol
extension NewsFeedViewModel: NewsFeedInteractorOutputProtocol {
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
