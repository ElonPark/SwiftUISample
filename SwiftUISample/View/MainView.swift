//
//  MainView.swift
//  SwiftUISample
//
//  Created by Elon on 06/06/2019.
//  Copyright © 2019 Elon. All rights reserved.
//

import SwiftUI

struct MainView : View {
    
    @EnvironmentObject var viewModel: MainViewModel
    
    //TODO: 검색어 바인딩
    @State var searchText: String
    
    //TODO: 검색 필드 추가
    //TODO: 검색어 뷰모델과 바인딩
    var body: some View {
        NavigationView{
            //TODO: 앱스토어 검색 UI 구현
            List {
                ForEach(viewModel.searchResults.value.identified(by: \.trackID)) { app in
                    //TODO: 앱스토어 검색내용 UI 구현
                    Hstack {
                        Image().background(.lightGray)
                        Text(app.trackName)
                    }
                }
            }.navigationBarTitle(Text("AppStore"))
        }
    }
}

#if DEBUG
struct MainView_Previews : PreviewProvider {
    static var previews: some View {
        MainView(viewModel: MainViewModel(testMode: true))
    }
}
#endif
