//
//  LandmarkCell.swift
//  ChinaLandmark
//
//  Created by liuyang on 2020/3/22.
//  Copyright © 2020 liuyang. All rights reserved.
//

import SwiftUI

struct LandmarkCell: View {

    var landmark: Landmark

    var body: some View {
        HStack {
            Image(landmark.imageName)
                .resizable()
                .frame(width: 50, height: 50)
                .cornerRadius(10)
            Text(landmark.name)
            Spacer()
        }
    }
}

struct LandmarkCell_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkCell(landmark: landmarks[0])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
