//
//  WBStory.swift
//  SwiftUIHub
//
//  Created by Yu Fan on 2019/6/24.
//  Copyright © 2019 Yu Fan. All rights reserved.
//

import Foundation
import SwiftUI

struct WBStoryUser: Identifiable {
    var avatar: String
    var name: String
    var icon: String
    var id: String {
        return "\(UUID())"
    }
}
