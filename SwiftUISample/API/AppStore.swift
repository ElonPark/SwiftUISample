//
//  AppStore.swift
//  SwiftUISample
//
//  Created by Elon on 09/06/2019.
//  Copyright © 2019 Elon. All rights reserved.
//

import Foundation
import Moya


enum AppStore {
    case search(parameter: SearchParameter)
}

extension AppStore: TargetType {
    
    var baseURL: URL {
        return  URL(string: "https://itunes.apple.com")!
    }
    
    var path: String {
        switch self {
        case .search:
            return "/search"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .search:
            return .get
        }
    }
    
    var task: Task {
        switch self {
        case .search(let parameter):
            return .requestParameters(parameters: parameter.dictiony, encoding: URLEncoding.default)
        }
    }
    
    var headers: [String: String]? {
        return [:]
    }
    
    var sampleData: Data {
        switch self {
        case .search:
            return Stub().searchResult.data(using: String.Encoding.utf8)!
        }
    }
}
