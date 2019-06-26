//
//  WeiboModel.swift
//  SwiftUIHub
//
//  Created by Yu Fan on 2019/6/25.
//  Copyright © 2019 Yu Fan. All rights reserved.
//

import Foundation

struct Weibo: Codable {
    let statuses: Array<WeiboModel>
    let total_number: Int
}

struct WeiboModel: Codable {
    var createTime: String
    var weiboID: String
    var favorited: Bool
    var source: String
    var user: WeiboModelUser
    var repostCount: Int
    var commentCount: Int
    var attitudeCount: Int
    var text: String
    var retweetedWeibo: [WeiboModel]?
    var pictures: Array<WeiboModelPicture>?
    var geo: WeiboModelGeo?
    var isHot: Bool?
    
    private enum CodingKeys: String, CodingKey {
        case createTime = "created_at"
        case weiboID
        case favorited
        case source
        case user
        case repostCount = "reposts_count"
        case commentCount = "comments_count"
        case attitudeCount = "attitudes_count"
        case text
        case retweetedWeibo = "retweeted_status"
        case geo
        case pictures = "pic_urls"
        case isHot
    }
}

struct WeiboModelPicture: Codable {
    var thumbnailPicURL: String?
    var middlePicURL: String?
    var originalPicURL: String?
    
    private enum CodingKeys: String, CodingKey {
        case thumbnailPicURL = "thumbnail_pic"
        case middlePicURL = "bmiddle_pic"
        case originalPicURL = "original_pic"
    }
}

struct WeiboModelUser: Codable {
    var userID: String
    var screenName: String
    var description: String?
    var avatarURL: String
    var avatarLarge: String?
    var avatarHD: String?
    var profileURL: String?
    var gender: String?
    var followerCount: Int
    var friendCount: Int
    var weiboCount: Int
    var favoriteCount: Int
    var followMe: Bool
    
    private enum CodingKeys: String, CodingKey {
        case userID = "id"
        case screenName = "screen_name"
        case description
        case avatarURL = "profile_image_url"
        case avatarLarge = "avatar_large"
        case avatarHD = "avatar_hd"
        case profileURL = "profile_url"
        case gender
        case followerCount = "followers_count"
        case friendCount = "friends_count"
        case weiboCount = "statuses_count"
        case favoriteCount = "favourites_count"
        case followMe = "follow_me"
    }
}

struct WeiboModelGeo: Codable {
    var longitude: String?
    var latitude: String?
    var cityCode: String?
    var provinceCode: String?
    var cityName: String?
    var provinceName: String?
    var address: String?
    
    private enum CodingKeys: String, CodingKey {
        case longitude
        case latitude
        case cityCode
        case provinceCode
        case cityName
        case provinceName
        case address
    }
}
