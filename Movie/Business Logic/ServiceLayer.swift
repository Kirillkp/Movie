//
//  ServiceLayer.swift
//  Movie
//
//  Created by Кирилл Полосов on 22.09.2022.
//

import Foundation
import Alamofire

final class ServiceLayer {
    
    // MARK: Shared instance

    static let shared = ServiceLayer()

    // MARK: Services
    
    let filmsService: FilmsService
    
    private init() {
        
        let filmsProvider = ServiceProvider<FilmsEndpoint>()
        filmsService = FilmsServiceImpl(serviceProvider: filmsProvider)
    }
    
}
