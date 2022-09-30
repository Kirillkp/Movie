//
//  FilmsService.swift
//  Movie
//
//  Created by Кирилл Полосов on 30.09.2022.
//

import Foundation

protocol FilmsService {
    
    typealias FilmIdHandler = (Result<FilmId>) -> Void
    
    /// Получить данные о фильме через id
    func obtainFilmId(with id: String, completion: @escaping FilmIdHandler)
}
