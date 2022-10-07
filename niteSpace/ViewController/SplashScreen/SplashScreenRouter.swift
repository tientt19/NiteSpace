//
//  
//  SplashScreenRouter.swift
//  niteSpace
//
//  Created by Tiến Trần on 07/10/2022.
//
//

import UIKit

// MARK: - RouterProtocol
protocol SplashScreenRouterProtocol {
    func goToNewsFeedScreen() 
}

// MARK: - SplashScreen Router
class SplashScreenRouter {
    weak var viewController: SplashScreenViewController?
    
    static func setupModule() -> SplashScreenViewController {
        let viewController = SplashScreenViewController()
        let router = SplashScreenRouter()
        let interactorInput = SplashScreenInteractorInput()
        let viewModel = SplashScreenViewModel(interactor: interactorInput)
        
        viewController.viewModel = viewModel
        viewController.router = router
        viewModel.view = viewController
        interactorInput.output = viewModel
        router.viewController = viewController
        
        return viewController
    }
}

// MARK: - SplashScreen RouterProtocol
extension SplashScreenRouter: SplashScreenRouterProtocol {
    func goToNewsFeedScreen() {
        let controller = MainTabbarController()
        controller.modalPresentationStyle = .fullScreen
        self.viewController?.present(controller, animated: true,completion: nil)
    }
}
