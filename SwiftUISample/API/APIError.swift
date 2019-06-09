//
//  APIError.swift
//  SwiftUISample
//
//  Created by Elon on 09/06/2019.
//  Copyright © 2019 Elon. All rights reserved.
//

import Foundation

enum APIError: LocalizedError {
    
    case jsonError
    
    var errorDescription: String {
        switch self {
        case .jsonError:
            return "JSON Decode Error"
        }
    }
    
    var localizedDescription: String {
        switch self {
        case .jsonError:
            return "JSON 디코딩에 실패 하였습니다."
        }
    }
}
