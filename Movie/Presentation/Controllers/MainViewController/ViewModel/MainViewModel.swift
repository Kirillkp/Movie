//
//  MainViewModel.swift
//  Movie
//
//  Created by Кирилл Полосов on 19.09.2022.
//

import Foundation

final class MainViewModel {
    
    private var filmsService: FilmsService
    
    var view: MainModuleInput?
    
    init(filmsService: FilmsService = ServiceLayer.shared.filmsService) {
        self.filmsService = filmsService
    }
    
    func obtainFilmId(with id: String) {
        filmsService.obtainFilmId(with: id) { result in
            switch result {
            case .success(let success):
                print(success)
            case .failure(let failure):
                print(failure)
            }
        }
    }
}
