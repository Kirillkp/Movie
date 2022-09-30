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
        serviceProvider.request(service: .obtainFilmId(id: id), decodeType: FilmId.self) {
            completion($0)
        }
    }
}
