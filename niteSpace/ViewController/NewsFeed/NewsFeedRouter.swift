//
//  
//  NewsFeedRouter.swift
//  niteSpace
//
//  Created by Tiến Trần on 07/10/2022.
//
//

import UIKit

// MARK: - RouterProtocol
protocol NewsFeedRouterProtocol {

}

// MARK: - NewsFeed Router
class NewsFeedRouter {
    weak var viewController: NewsFeedViewController?
    
    static func setupModule() -> NewsFeedViewController {
        let viewController = NewsFeedViewController()
        let router = NewsFeedRouter()
        let interactorInput = NewsFeedInteractorInput()
        let viewModel = NewsFeedViewModel(interactor: interactorInput)
        
        viewController.viewModel = viewModel
        viewController.router = router
        viewModel.view = viewController
        interactorInput.output = viewModel
        router.viewController = viewController
        
        return viewController
    }
}

// MARK: - NewsFeed RouterProtocol
extension NewsFeedRouter: NewsFeedRouterProtocol {
    
}
