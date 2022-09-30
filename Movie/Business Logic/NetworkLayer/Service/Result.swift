//
//  Result.swift
//  Movie
//
//  Created by Кирилл Полосов on 30.09.2022.
//

import Foundation

enum Result<T: Codable> {
    case success(T)
    case failure(Error)
}
