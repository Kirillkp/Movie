//
//  CategoriesViewController.swift
//  Movie
//
//  Created by Кирилл Полосов on 19.09.2022.
//

import UIKit
import CoordinatorLib

protocol CategoriesModule: Presentable {
    
}

protocol CategoriesModuleInput {
    
}

final class CategoriesViewController: UIViewController, CategoriesModule {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Categories"
        view.backgroundColor = .white
    }

}

extension CategoriesViewController: CategoriesModuleInput {
    
}
