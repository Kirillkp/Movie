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
    
    func viewDidLoad() {
        obtainFilm(order: .rating, type: .film, yearFrom: 2022, page: 1)
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
    
    func obtainFilm(order: Order,
                    type: TypeFilm,
                    yearFrom: Int,
                    page: Int) {
        filmsService.obtainFilm(order: order, type: type, yearFrom: yearFrom, page: page) { [weak self] result in
            switch result {
            case .success(let success):
                guard let data = success.items else { return }
                self?.view?.showFilm(with: data)
            case .failure(let failure):
                print(failure)
            }
        }
    }
}
