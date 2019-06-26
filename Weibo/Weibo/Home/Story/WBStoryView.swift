//
//  WBStoryView.swift
//  SwiftUIHub
//
//  Created by Yu Fan on 2019/6/24.
//  Copyright © 2019 Yu Fan. All rights reserved.
//

import SwiftUI

struct WBStoryView : View {
    
    @ObjectBinding var weiboStory: WeiboStore
    
    var body: some View {
        ScrollView {
            HStack {
                ForEach(self.weiboStory.storys) { story in
                    WBStoryUserView(user: story)
                }
            }
        }
    }
}


struct WBStoryUserView : View {
    
    private let avatarSize: CGFloat = 50
    private let iconSize: CGFloat = 16
    
    var user: WBStoryUser
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                // avatar
                Image(user.avatar)
                    .frame(width: avatarSize, height: avatarSize)
                    .clipShape(Circle())
                    .background(Color.white)
                    .padding(2)
                    .border(Color.red, width: 1, cornerRadius: (avatarSize+2) / 2)

                // icon
                Image(user.icon)
                    .frame(width: iconSize, height: iconSize)
            }
            // name
            Text(user.name)
                .foregroundColor(Color.primary)
                .font(Font.system(.body, design: .default))
                .lineLimit(1)
        }
        .frame(width: 80, height: 120)
        
    }
}

#if DEBUG
struct WBStoryView_Previews : PreviewProvider {
    static var previews: some View {
        WBStoryView(weiboStory: WeiboStore())
    }
}
#endif
