//
//  HomeNaviView.swift
//  SwiftUIHub
//
//  Created by Yu Fan on 2019/6/25.
//  Copyright © 2019 Yu Fan. All rights reserved.
//

import SwiftUI

struct WBHomeNaviView : View {
    var body: some View {
        HStack(alignment: .firstTextBaseline) {
            // follow
            VStack(spacing: 4) {
                Button(action: {
                    
                }) {
                    Text("Follow")
                        .font(.title)
                        .bold()
                        .foregroundColor(.primary)
                }
            
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 8, height: 8)
            }
            .padding(.leading, 10)
            
            // hot
            Button(action: {
                
            }) {
                Text("Hot")
                    .font(.headline)
                    .foregroundColor(.secondary)
            }
            .padding(.leading, 30)
            
            Spacer()
            
            // gift
            Button(action: {
                
            }) {
                Image(systemName: "gift.fill")
                    .foregroundColor(Color.red)
                    .frame(width: 30, height: 30)
            }
            .padding(.bottom, -6)
            
            // plus
            Button(action: {
                
            }) {
                Image(systemName: "plus.circle.fill")
                    .foregroundColor(.red)
                    .frame(width: 40, height: 40)
            }
            .padding(.trailing, 10)
            .padding(.bottom, -12)
        }
        .frame(height: 50)
    }
}

#if DEBUG
struct HomeNaviView_Previews : PreviewProvider {
    static var previews: some View {
        WBHomeNaviView()
    }
}
#endif
