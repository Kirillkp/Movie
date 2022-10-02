//
//  SettingsLayer.swift
//  Movie
//
//  Created by Кирилл Полосов on 02.10.2022.
//

import Foundation

final class SettingsService {
    
    private let defaults: UserDefaults
    
    private enum Keys {
        static let service = String(describing: SettingsService.self)
        static let isAppFirstRun = service + ".isAppFirstRun"
    }
    
    init(userDefaults: UserDefaults = UserDefaults.standard) {
        defaults = userDefaults
        
        defaults.register(defaults: [
            Keys.isAppFirstRun : true
        ])
    }
}
