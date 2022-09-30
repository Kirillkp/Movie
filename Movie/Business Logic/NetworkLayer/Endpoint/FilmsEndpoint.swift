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
    
    var path: String {
        switch self {
        case .obtainFilmId(let id):
            return "/v2.2/films/\(id)"
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
        default:
            return nil
        }
    }
    
    var method: HTTPMethod {
        switch self {
        case .obtainFilmId:
            return .get
        }
    }
}
