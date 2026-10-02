//
//  ContentView.swift
//  macOS
//
//  Created by Nimai Goswami on 10/2/26.
//

import SwiftUI

enum AppTab: String, CaseIterable, Identifiable {
    case client = "Client"
    case server = "Server"

    var id: String { rawValue }
}

struct ContentView: View {
    @State private var selectedTab: AppTab = .client

    var body: some View {
        TabView(selection: $selectedTab) {
            ForEach(AppTab.allCases) { tab in
                Tab(value: tab) {
                    VStack {
                        Image(systemName: "globe")
                            .imageScale(.large)
                            .foregroundStyle(.tint)
                        Text(tab.rawValue)
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                } label: {
                    Text(tab.rawValue)
                }
            }
        }
        .tabViewStyle(.tabBarOnly)
    }
}

#Preview {
    ContentView()
}
