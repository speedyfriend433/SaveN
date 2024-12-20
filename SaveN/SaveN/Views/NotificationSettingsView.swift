//
//  NotificationSettingsView.swift
//  SaveN
//
//  Created by speedy on 2024/12/20.
//

import SwiftUI

struct NotificationSettingsView: View {
    @EnvironmentObject var notificationManager: NotificationManager
    
    var body: some View {
        List {
            Section(header: Text("Notification Status")) {
                HStack {
                    Text("Notifications")
                    Spacer()
                    statusIcon
                }
            }
            
            Section {
                Button(action: {
                    notificationManager.openNotificationSettings()
                }) {
                    Text("Open System Settings")
                }
                
                Button(action: {
                    notificationManager.requestNotificationPermissions()
                }) {
                    Text("Request Permissions")
                }
            }
            
            Section(header: Text("About")) {
                Text("To archive notifications, ensure notifications are enabled and the app has permission to receive them.")
                    .font(.footnote)
                    .foregroundColor(.gray)
            }
        }
        .navigationTitle("Settings")
    }
    
    private var statusIcon: some View {
        switch notificationManager.notificationStatus {
        case .enabled:
            return Image(systemName: "checkmark.circle.fill")
                .foregroundColor(.green)
        case .disabled:
            return Image(systemName: "x.circle.fill")
                .foregroundColor(.red)
        case .partial:
            return Image(systemName: "exclamationmark.circle.fill")
                .foregroundColor(.yellow)
        }
    }
}
