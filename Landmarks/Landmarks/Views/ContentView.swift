//
//  ContentView.swift
//  Landmarks
//
//  Created by gaeng2 on 5/28/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
