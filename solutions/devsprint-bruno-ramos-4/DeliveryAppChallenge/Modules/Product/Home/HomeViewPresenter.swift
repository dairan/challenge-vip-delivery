//
//  HomeViewPresenter.swift
//  DeliveryAppChallenge
//
//  Created by Dairan on 10/06/22.
//

import Foundation

// MARK: - HomeViewPresentationLogic
protocol HomeViewPresentationLogic {
    func presentSuccess()
    func presentError()
}

// MARK: - HomeViewPresenter
final class HomeViewPresenter {
    weak var viewController: HomeViewController?
}

// MARK: HomeViewPresentationLogic
extension HomeViewPresenter: HomeViewPresentationLogic {
    func presentSuccess() {
        viewController?.displayData()
    }

    func presentError() {
        print("error")
    }
}
