//
//  HomeViewFactory.swift
//  DeliveryAppChallenge
//
//  Created by Dairan on 10/06/22.
//

import UIKit

final class HomeViewFactory {
    static func make() -> UIViewController {
        let presenter = HomeViewPresenter()
        let router = HomeViewRouter()
        let interactor = HomeViewInteractor(with: presenter)
        let viewController = HomeViewController(with: interactor)

        presenter.viewController = viewController
        router.viewController = viewController

        return viewController
    }
}
