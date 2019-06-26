//
//  WeiboStore.swift
//  SwiftUIHub
//
//  Created by Yu Fan on 2019/6/24.
//  Copyright © 2019 Yu Fan. All rights reserved.
//

import Combine
import SwiftUI

class WeiboStore: BindableObject {
    var didChange = PassthroughSubject<Void, Never>()
    
    var storys: [WBStoryUser] {
        didSet {
            didChange.send()
        }
    }
    
    init() {
        storys = mockStory
    }
    
}

#if DEBUG

let mockStory = [
    WBStoryUser(avatar: "avatar_verge", name: "edc", icon: "icon_dollor"),
    WBStoryUser(avatar: "avatar_tnw", name: "John Edison", icon: "icon_vip"),
    WBStoryUser(avatar: "avatar_ars", name: "Jay Chou", icon: "icon_fire"),
    WBStoryUser(avatar: "avatar_verge", name: "edc", icon: "icon_dollor"),
    WBStoryUser(avatar: "avatar_tnw", name: "John Edison", icon: "icon_vip"),
    WBStoryUser(avatar: "avatar_ars", name: "Jay Chou", icon: "icon_fire"),
    WBStoryUser(avatar: "avatar_verge", name: "edc", icon: "icon_dollor"),
    WBStoryUser(avatar: "avatar_tnw", name: "John Edison", icon: "icon_vip"),
    WBStoryUser(avatar: "avatar_ars", name: "Jay Chou", icon: "icon_fire"),
]

let mockWeibo = WeiboModel(createTime: "47 minutes ago", weiboID: "123", favorited: true, source: "iPhone", user: WeiboModelUser(userID: "11", screenName: "edc", description: "hello world", avatarURL: "avatar_verge", avatarLarge: "avatar_verge", avatarHD: "avatar_verge", profileURL: "d", gender: "w", followerCount: 2, friendCount: 3, weiboCount: 44, favoriteCount: 34, followMe: true), repostCount: 34, commentCount: 94, attitudeCount: 54, text: "#Any Tag# what is this,第一个微博哈哈哈哈哈哈哈，什么内容呀！", pictures: nil, geo: nil, isHot: true)//WeiboParse().weibos.first!

#endif
