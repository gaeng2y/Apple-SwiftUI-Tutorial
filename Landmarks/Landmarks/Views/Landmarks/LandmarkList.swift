//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Kyeongmo Yang on 2023/07/27.
//

import SwiftUI

struct LandmarkList: View {
    // 앱의 많은 뷰와 공유해야하는 데이터의 경우 SwiftUI는 EnvironmentObject속성 래퍼를 제공합니다.
    // 이를 통해 필요한 곳 ​​어디에서나 모델 데이터를 공유 할 수 있으며, 데이터가 변경 될 때 뷰가 자동으로 업데이트 된 상태로 유지됩니다.
    @Environment(ModelData.self) var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(ModelData())
    }
}
