//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Kyeongmo Yang on 2023/07/27.
//

import SwiftUI

@main
struct LandmarksApp: App {
    // @StateObject 특성을 사용하여 앱 수명 동안 한 번만 지정된 속성에 대한 모델 개체를 초기화합니다. 여기에 표시된 것처럼 앱 인스턴스에서 속성을 사용할 때와 보기에서 속성을 사용할 때 마찬가지입니다.
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
