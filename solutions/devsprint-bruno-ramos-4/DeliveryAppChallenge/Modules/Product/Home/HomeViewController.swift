//
//  ViewController.swift
//  DeliveryAppChallenge
//
//  Created by Rodrigo Borges on 25/10/21.
//

import UIKit

// MARK: - HomeViewDisplayLogic
protocol HomeViewDisplayLogic {
    func displayData()
}

// MARK: - HomeViewController
class HomeViewController: UIViewController {
    // MARK: Lifecycle
    init(with interactor: HomeViewBusinessLogic) {
        self.interactor = interactor

        super.init(nibName: nil, bundle: nil)
    }

    @available(*, unavailable)
    required init?(coder _: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: Internal
    override func viewDidLoad() {
        navigationSetup()
        interactor.fetchData()
    }

    override func loadView() {
        self.view = HomeView()
    }

    // MARK: Private
    private let interactor: HomeViewBusinessLogic

    private func navigationSetup() {
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "Delivery App"
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Settings",
                                                            style: .plain,
                                                            target: nil,
                                                            action: nil)
    }
}

// MARK: HomeViewDisplayLogic
extension HomeViewController: HomeViewDisplayLogic {
    func displayData() {
        print("sucesso")
    }
}
