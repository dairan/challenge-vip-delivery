//
//  HomeViewRouter.swift
//  DeliveryAppChallenge
//
//  Created by Dairan on 10/06/22.
//

import UIKit

// MARK: - HomeViewRoutingLogic
protocol HomeViewRoutingLogic: AnyObject {
    func routeToNextModule()
}

// MARK: - HomeViewRouter
final class HomeViewRouter {
    weak var viewController: HomeViewController?
}

// MARK: HomeViewRoutingLogic
extension HomeViewRouter: HomeViewRoutingLogic {
    func routeToNextModule() {
        let newViewController = UIViewController()
        viewController?.navigationController?.pushViewController(newViewController, animated: true)
    }
}
