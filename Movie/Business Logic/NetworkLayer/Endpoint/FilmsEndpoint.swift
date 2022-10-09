//
//  FilmsEndpoint.swift
//  Movie
//
//  Created by Кирилл Полосов on 30.09.2022.
//

import Alamofire

enum FilmsEndpoint: URLRequestBuilder {
    
    /// Получить данные о фильме через id
    case obtainFilmId(id: String)
    case obtainFilm(order: Order,
                    type: TypeFilm,
                    yearFrom: Int,
                    page: Int)
    
    var path: String {
        switch self {
        case .obtainFilmId(let id):
            return "/v2.2/films/\(id)"
        case .obtainFilm:
            return "/v2.2/films"
        }
    }
    
    var headers: HTTPHeaders? {
        switch self {
        default:
            return nil
        }
    }
    
    var parameters: Parameters? {
        switch self {
        case.obtainFilm(let order, let type, let yearFrom, let page):
            return ["order" : order.rawValue,
                    "type" : type.rawValue,
                    "yearFrom" : yearFrom,
                    "page" : page]
        default:
            return nil
        }
    }
    
    var method: HTTPMethod {
        switch self {
        case .obtainFilmId:
            return .get
        case .obtainFilm:
            return .get
        }
    }
}
