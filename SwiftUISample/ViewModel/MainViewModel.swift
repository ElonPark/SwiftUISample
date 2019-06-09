//
//  MainViewModel.swift
//  SwiftUISample
//
//  Created by Elon on 09/06/2019.
//  Copyright © 2019 Elon. All rights reserved.
//

import Foundation
import Combine
import Moya
import ObjectMapper


final class MainViewModel {
    
    private lazy var api = MoyaProvider<AppStore>()
    let searchResults = CurrentValueSubject<[ResultElement], Error>([ResultElement]())
    
    let isTest: Bool
    
    //TODO: 뷰에서 검색어 바인딩
    init(testMode: Bool = false) {
        isTest = testMode
        
        if isTest {
            stubRequest()
        }
    }
    
    func stubRequest() {
        let result = Mapper<SearchResult>().map(JSONString: Stub().searchResult)!
        searchResults.send(result.results)
    }
    
    func search(keword: String) {
        api.request(.search(parameter: SearchParameter(term: keword))) { [weak self]  response in
            guard let `self` = self else { return }
            switch response.result {
            case .success(let result):
                do {
                    let json = try result.mapJSON()
                    if let searchResult = Mapper<SearchResult>().map(JSONObject: json) {
                        self.searchResults.send(searchResult.results)
                    } else {
                        print(APIError.jsonError.localizedDescription)
                    }
                } catch {
                    print(error.localizedDescription)
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
        
    }
}
