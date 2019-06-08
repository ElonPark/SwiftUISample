//
//  MainView.swift
//  SwiftUISample
//
//  Created by Elon on 06/06/2019.
//  Copyright © 2019 Elon. All rights reserved.
//

import SwiftUI

struct MainView : View {
    var body: some View {
        NavigationView{
            List {
                Text("Hello World")
                    .color(.red)
                Text("SwiftUI")
                }
                .navigationBarTitle(Text("AppStore"))
        }
    }
}

#if DEBUG
struct MainView_Previews : PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
#endif
