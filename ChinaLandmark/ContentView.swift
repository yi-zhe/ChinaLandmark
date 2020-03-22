//
//  ContentView.swift
//  ChinaLandmark
//
//  Created by liuyang on 2020/3/22.
//  Copyright © 2020 liuyang. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List(landmarks) { landmark in
            Image(landmark.imageName)
            .resizable()
                .frame(width:50, height:50)
            VStack {
                Text(landmark.name)
                Text(landmark.name)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
