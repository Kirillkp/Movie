//
//  Bundle+FrameworkBundle.swift
//  Movie
//
//  Created by Кирилл Полосов on 16.09.2022.
//

import Foundation

private class ClassForBundle {}

extension Bundle {
    static var frameworkBundle: Self {
        .init(for: ClassForBundle.self)
    }
}
