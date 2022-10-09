//
//  FilmsService.swift
//  Movie
//
//  Created by Кирилл Полосов on 30.09.2022.
//

import Foundation

protocol FilmsService {
    
    typealias FilmIdHandler = (Result<Film>) -> Void
    typealias FilmHandler = (Result<Films>) -> Void
    
    /// Получить данные о фильме через id
    func obtainFilmId(with id: String, completion: @escaping FilmIdHandler)
    
    /// Получить данные о фильме
    func obtainFilm(order: Order, type: TypeFilm, yearFrom: Int, page: Int, completion: @escaping FilmHandler)
}
