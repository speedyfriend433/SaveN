//
//  NotificationDetailView.swift
//  SaveN
//
//  Created by speedy on 2024/12/20.
//

import SwiftUI

struct NotificationDetailView: View {
    let notification: ArchivedNotification
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Text(notification.title)
                    .font(.title)
                    .bold()
                
                Text(notification.body)
                    .font(.body)
                
                VStack(alignment: .leading, spacing: 8) {
                    DetailRowView(title: "Time", value: notification.formattedDate)
                    DetailRowView(title: "App ID", value: notification.appIdentifier)
                    DetailRowView(title: "Notification ID", value: notification.id)
                }
                .padding(.top)
                
                Spacer()
            }
            .padding()
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct DetailRowView: View {
    let title: String
    let value: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(title)
                .font(.caption)
                .foregroundColor(.gray)
            Text(value)
                .font(.body)
        }
    }
}
