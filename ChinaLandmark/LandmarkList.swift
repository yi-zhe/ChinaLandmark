//
//  LandmarkList.swift
//  ChinaLandmark
//
//  Created by liuyang on 2020/3/22.
//  Copyright © 2020 liuyang. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarks) { landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkCell(landmark: landmark)
                }
            }
        .navigationBarTitle(Text("中国地标"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
