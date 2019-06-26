//
//  WBWeiboRow.swift
//  SwiftUIHub
//
//  Created by Yu Fan on 2019/6/25.
//  Copyright © 2019 Yu Fan. All rights reserved.
//

import SwiftUI

struct WBWeiboRow : View {
    
    var weibo: WeiboModel
    
    var body: some View {
        VStack {
            WBWeiboProfileView(weibo: weibo)
            WBWeiboContentView(weibo: weibo)
            WBWeiboToolView(weibo: weibo)
        }
    }
}



#if DEBUG
struct WBWeiboRow_Previews : PreviewProvider {
    static var previews: some View {
        WBWeiboRow(weibo: mockWeibo)
    }
}
#endif
