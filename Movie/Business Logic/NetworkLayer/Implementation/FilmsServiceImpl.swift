//
//  FilmsServiceImpl.swift
//  Movie
//
//  Created by Кирилл Полосов on 30.09.2022.
//

import Foundation

final class FilmsServiceImpl: FilmsService {
    
    private let serviceProvider: ServiceProvider<FilmsEndpoint>
    
    init(serviceProvider: ServiceProvider<FilmsEndpoint>) {
        self.serviceProvider = serviceProvider
    }
    
    /// Получить данные о фильме через id
    func obtainFilmId(with id: String, completion: @escaping FilmIdHandler) {
        serviceProvider.request(service: .obtainFilmId(id: id), decodeType: Film.self) {
            completion($0)
        }
    }
    
    /// Получить данные о фильме
    func obtainFilm(order: Order,
                    type: TypeFilm,
                    yearFrom: Int,
                    page: Int,
                    completion: @escaping FilmHandler) {
        serviceProvider.request(service: .obtainFilm(order: order, type: type, yearFrom: yearFrom, page: page), decodeType: Films.self) {
            completion($0)
        }
    }
}
