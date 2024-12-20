//
//  NotificationListView.swift
//  SaveN
//
//  Created by speedy on 2024/12/20.
//

import SwiftUI

struct NotificationListView: View {
    @StateObject private var notificationManager = NotificationManager.shared
    
    var body: some View {
        List {
            if notificationManager.notifications.isEmpty {
                Text("No archived notifications")
                    .foregroundColor(.gray)
            } else {
                ForEach(notificationManager.notifications.sorted(by: { $0.timestamp > $1.timestamp })) { notification in
                    NavigationLink {
                        NotificationDetailView(notification: notification)
                    } label: {
                        NotificationRowView(notification: notification)
                    }
                }
                .onDelete { indexSet in
                    notificationManager.removeNotifications(at: indexSet)
                }
            }
        }
        .navigationTitle("Notifications")
        .toolbar {
            EditButton()
        }
    }
}

struct NotificationRowView: View {
    let notification: ArchivedNotification
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(notification.title)
                .font(.headline)
            Text(notification.body)
                .font(.subheadline)
                .foregroundColor(.gray)
                .lineLimit(2)
            Text(notification.formattedDate)
                .font(.caption)
                .foregroundColor(.gray)
        }
        .padding(.vertical, 4)
    }
}
