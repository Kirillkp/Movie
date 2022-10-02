//
//  MainViewController.swift
//  Movie
//
//  Created by Кирилл Полосов on 15.09.2022.
//

import UIKit
import CoordinatorLib

protocol MainModule: Presentable {
    
}

protocol MainModuleInput {
    
}

final class MainViewController: UIViewController, MainModule {

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "Main"
        navigationController?.navigationBar.prefersLargeTitles = true
        view.backgroundColor = .white
    }

}

extension MainViewController: MainModuleInput {
    
}

