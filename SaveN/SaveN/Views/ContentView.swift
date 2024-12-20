//
//  ContentView.swift
//  SaveN
//
//  Created by speedy on 2024/12/20.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var notificationManager = NotificationManager.shared
    
    var body: some View {
        NavigationView {
            NotificationListView()
        }
    }
}

#Preview {
    ContentView()
}
