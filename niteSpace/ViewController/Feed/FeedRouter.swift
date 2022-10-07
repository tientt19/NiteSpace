//
//  
//  FeedRouter.swift
//  niteSpace
//
//  Created by Tiến Trần on 07/10/2022.
//
//

import UIKit

// MARK: - RouterProtocol
protocol FeedRouterProtocol {

}

// MARK: - Feed Router
class FeedRouter {
    weak var viewController: FeedViewController?
    
    static func setupModule() -> FeedViewController {
        let viewController = FeedViewController()
        let router = FeedRouter()
        let interactorInput = FeedInteractorInput()
        let viewModel = FeedViewModel(interactor: interactorInput)
        
        viewController.viewModel = viewModel
        viewController.router = router
        viewModel.view = viewController
        interactorInput.output = viewModel
        router.viewController = viewController
        
        return viewController
    }
}

// MARK: - Feed RouterProtocol
extension FeedRouter: FeedRouterProtocol {
    
}
