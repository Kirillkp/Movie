//
//  CoordinatorFactory.swift
//  Movie
//
//  Created by Кирилл Полосов on 18.09.2022.
//

import Foundation
import CoordinatorLib

typealias CoordinatorGroup<C: Coordinatable> = (coordinator: C, presentable: Presentable)

final class CoordinatorFactory {
    let moduleFactory = ModuleFactory()
}
