//
//  MainView.swift
//  SwiftUISample
//
//  Created by Elon on 06/06/2019.
//  Copyright © 2019 Elon. All rights reserved.
//

import SwiftUI
import Combine

struct MainView : View {
    
    let viewModel = MainViewModel(testMode: false)
    //@EnvironmentObject var viewModel: MainViewModel
    
    //TODO: 검색어 바인딩
//    @State var searchText: String
    
    //TODO: 검색 필드 추가
    //TODO: 검색어 뷰모델과 바인딩
    var body: some View {
        Text(getSample())
    }
    
    func getSample() -> String {
        viewModel.search(keword: "kakao")
        print(viewModel.searchResults.value)
        
        return "aaaa"
    }
}

#if DEBUG
struct MainView_Previews : PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
#endif
