//
//  LandmarkDetail.swift
//  ChinaLandmark
//
//  Created by liuyang on 2020/3/22.
//  Copyright © 2020 liuyang. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    var body: some View {
        VStack {
            
            MapView(center: landmark.locationCoordinate)
                .edgesIgnoringSafeArea(.top)
                .frame(height: 350)

            Image(landmark.imageName)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10)
                .offset(x:0, y: -120)
                .padding(.bottom, -120)
            VStack(alignment: .leading, spacing: 8){
                Text(landmark.name)
                    .font(.title)

                HStack {
                    Text(landmark.city).font(.subheadline)
                    Spacer()
                    Text(landmark.province).font(.subheadline)
                }
            }.padding()

            Spacer()
        }.navigationBarTitle(Text(landmark.name))
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[0])
    }
}
