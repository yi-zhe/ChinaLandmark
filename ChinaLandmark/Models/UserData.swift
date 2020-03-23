//
//  UserData.swift
//  ChinaLandmark
//
//  Created by liuyang on 2020/3/23.
//  Copyright © 2020 liuyang. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    @Published var showFavoriteOnly = false
    @Published var userLandmarks = landmarks
}
