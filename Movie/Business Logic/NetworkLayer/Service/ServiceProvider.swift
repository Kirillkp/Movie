//
//  ServiceProvider.swift
//  Movie
//
//  Created by Кирилл Полосов on 30.09.2022.
//

import Alamofire

class ServiceProvider<T: URLRequestBuilder> {
    
    func request<U: Codable>(service: T,
                             decodeType: U.Type,
                             completion: @escaping (Result<U>) -> Void) {
        
        guard let urlRequset = service.urlRequest else { return }
        
        AF.request(urlRequset).responseDecodable(of: U.self) { response in
            switch response.result {
            case .success(let result):
                completion(.success(result))
            case .failure(let failure):
                completion(.failure(failure))
            }
        }
    }
}
