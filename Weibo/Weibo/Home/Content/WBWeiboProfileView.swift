//
//  WBWeiboProfileView.swift
//  SwiftUIHub
//
//  Created by Yu Fan on 2019/6/25.
//  Copyright © 2019 Yu Fan. All rights reserved.
//

import SwiftUI

struct WBWeiboProfileView : View {
    
    var weibo: WeiboModel
    
    var body: some View {
        HStack {
            Image(weibo.user.avatarURL)
                .frame(width: 50, height: 50)
                .clipShape(Circle())
            
            VStack(alignment: .leading, spacing: 4) {
                Text(weibo.user.screenName)
                    .font(.body)
                
                Text("\(weibo.createTime) from \(weibo.source)")
                    .font(.footnote)
                    .color(.gray)
            }
            
            Spacer()
        }
    }
}

#if DEBUG
struct WBWeiboProfileView_Previews : PreviewProvider {
    static var previews: some View {
        WBWeiboProfileView(weibo: mockWeibo)
    }
}
#endif
