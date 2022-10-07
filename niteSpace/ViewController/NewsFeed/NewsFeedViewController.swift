//
//  
//  NewsFeedViewController.swift
//  niteSpace
//
//  Created by Tiến Trần on 07/10/2022.
//
//

import UIKit

// MARK: - ViewProtocol
protocol NewsFeedViewProtocol: AnyObject {
    func showHud()
    func hideHud()
    
    //UITableView
    //func onReloadData()
}

// MARK: - NewsFeed ViewController
class NewsFeedViewController: BaseViewController {
    var router: NewsFeedRouterProtocol!
    var viewModel: NewsFeedViewModelProtocol!
    
    
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupInit()
        self.viewModel.onViewDidLoad()
    }
    
    // MARK: - Init
    private func setupInit() {

    }
    
    // MARK: - Action
    
}

// MARK: - NewsFeed ViewProtocol
extension NewsFeedViewController: NewsFeedViewProtocol {
    func showHud() {
        self.showProgressHud()
    }
    
    func hideHud() {
        self.hideProgressHud()
    }
}
