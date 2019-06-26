//
//  WBHomeView.swift
//  SwiftUIHub
//
//  Created by Yu Fan on 2019/6/25.
//  Copyright © 2019 Yu Fan. All rights reserved.
//

import SwiftUI

struct WBHomeView : View {
    var body: some View {
        VStack {
            WBHomeNaviView()
            List {
                WBStoryView(weiboStory: WeiboStore())
                WBWeiboRow(weibo: mockWeibo)
                WBWeiboRow(weibo: mockWeibo)
                WBWeiboRow(weibo: mockWeibo)
            }
        }
    }
}

#if DEBUG
struct WBHomeView_Previews : PreviewProvider {
    static var previews: some View {
        WBHomeView()
    }
}
#endif
