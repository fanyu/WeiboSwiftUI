//
//  WBWeiboToolView.swift
//  SwiftUIHub
//
//  Created by Yu Fan on 2019/6/25.
//  Copyright © 2019 Yu Fan. All rights reserved.
//

import SwiftUI

struct WBWeiboToolView : View {
    
    var weibo: WeiboModel
    
    var body: some View {
        HStack {
            Group {
                Spacer()
                WBToolButton(icon: "arrowshape.turn.up.right",
                             count: weibo.repostCount)
                    .foregroundColor(.black)
                Spacer()
            }
            
            Divider()
                .padding(.top, 10)
                .padding(.bottom, 10)
            
            Group {
                Spacer()
                WBToolButton(icon: "text.bubble",
                             count: weibo.commentCount)
                    .foregroundColor(.black)
                Spacer()
            }
            
            Divider()
                .padding(.top, 10)
                .padding(.bottom, 10)

            Group {
                Spacer()
                WBToolButton(icon: "suit.heart",
                             count: weibo.attitudeCount)
                    .foregroundColor(.black)
                Spacer()
            }
        }
        .frame(height: 44)
        .border(Color.secondary, width: 1, cornerRadius: 8)
    }
}

struct WBToolButton : View {
    var icon: String
    var count: Int
    
    var body: some View {
        Button(action: {
            
        }) {
            HStack {
                Image(systemName: self.icon)
                Text("\(self.count)")
                    .font(.body)
            }
        }
    }
}


#if DEBUG
struct WBWeiboToolView_Previews : PreviewProvider {
    static var previews: some View {
        WBWeiboToolView(weibo: mockWeibo)
    }
}
#endif
