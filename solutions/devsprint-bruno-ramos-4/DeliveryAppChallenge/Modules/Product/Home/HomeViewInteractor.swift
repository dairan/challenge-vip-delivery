//
//  HomeViewInteractor.swift
//  DeliveryAppChallenge
//
//  Created by Dairan on 10/06/22.
//

import Foundation

// MARK: - HomeViewBusinessLogic
protocol HomeViewBusinessLogic {
    func fetchData()
}

// MARK: - HomeViewInteractor
final class HomeViewInteractor {
    let presenter: HomeViewPresentationLogic

    init(with presenter: HomeViewPresentationLogic) {
        self.presenter = presenter
    }
}

// MARK: - HomeViewInteractor + HomeViewBusinessLogic
extension HomeViewInteractor: HomeViewBusinessLogic {
    private enum Status {
        case success
        case error
    }

    func fetchData() {
        guard let status = [Status.success, Status.error].randomElement() else { return }
        switch status {
        case .success:
            presenter.presentSuccess()
        case .error:
            presenter.presentError()
        }
    }
}
