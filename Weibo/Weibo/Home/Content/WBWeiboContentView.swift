//
//  WBWeiboContent.swift
//  SwiftUIHub
//
//  Created by Yu Fan on 2019/6/25.
//  Copyright © 2019 Yu Fan. All rights reserved.
//

import SwiftUI

struct WBWeiboContentView : View {
    
    var weibo: WeiboModel
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(weibo.text)
                .lineLimit(nil)
            
            //WBWeiboPicsView(picSize: CGSize(width: 120, height: 80))
        }
    }
}

struct WBWeiboPicsView : View {
    
    var picSize: CGSize = .zero
    var picURLs: [String] = []
    var numOfRows: Int = 3
    var numPerRow: Int = 3
    
    private var picsMatrix: [[String]] = [
        ["pic1", "pic2", "pic3"],
        ["pic1", "pic2", "pic3"],
        ["pic1", "pic2"],
    ]
    
    var body: some View {
        //VStack(alignment: .leading) {
        List{
            ForEach(0 ..< self.numOfRows) { row in
                WBWeiboPicRow(picSize: self.picSize, picURLs: self.picsMatrix[row])
                    .frame(height: 100)
            }
        //}
        }
    }
}

struct WBWeiboPicRow : View {
    var picSize: CGSize = .zero
    var picURLs: [String] = []

    var body: some View {
        HStack(spacing: 10) {
            ForEach(picURLs.identified(by: \.self)) { url in
                Image(url)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: self.picSize.width, height: self.picSize.height)
                    .cornerRadius(4)
            }
        }
    }
}

#if DEBUG
struct WBWeiboContent_Previews : PreviewProvider {
    static var previews: some View {
        WBWeiboContentView(weibo: mockWeibo)
    }
}
#endif
