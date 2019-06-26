//
//  WeiboParse.swift
//  SwiftUIHub
//
//  Created by Yu Fan on 2019/6/25.
//  Copyright © 2019 Yu Fan. All rights reserved.
//

import Foundation

class WeiboParse {
    
    var weibos: [WeiboModel] = []
    
    init() {
        DispatchQueue.global().async { [weak self] in
            guard let self = self else { return }
            self.parseJson()
        }
    }
    
    private func parseJson() {
        guard let path = Bundle.main.path(forResource: "weibo", ofType: "json") else {
            fatalError("cannot parse")
        }
        
        do {
            let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
            let decoder = JSONDecoder()
            let models = try decoder.decode(Weibo.self, from: data)
            self.weibos = models.statuses
        } catch {
            print(error)
        }
    }
}
