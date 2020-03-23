//
//  LandmarkList.swift
//  ChinaLandmark
//
//  Created by liuyang on 2020/3/22.
//  Copyright © 2020 liuyang. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {

    // 引用时需要加$
    @State private var showFavoriteOnly: Bool = false

    // 反向绑定 绑定对象不是简单的变量
    @EnvironmentObject var userData: UserData

    var body: some View {
        NavigationView {
            List{
                // 点击时自动修改showFavoriteOnly的值
                // 简化了toggle的操作
                Toggle(isOn: $showFavoriteOnly) {
                    Text("只展示收藏")
                }
                ForEach(userData.userLandmarks) { landmark in
                    if !self.showFavoriteOnly || landmark.isFavorite {
                        NavigationLink(destination: LandmarkDetail(landmark: landmark).environmentObject(self.userData)) {
                            LandmarkCell(landmark: landmark)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("中国地标"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList().environmentObject(UserData())
    }
}
