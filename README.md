# SaveN - iOS Notification Archiver

SaveN is an iOS application that allows users to archive and manage their notifications efficiently. Built with SwiftUI, it provides a clean and intuitive interface for storing and viewing notification history.

## 📱 Features

- Archive notifications automatically
- View notification history
- Delete archived notifications
- Detailed view for each notification
- Notification permission management
- System settings integration

## 🛠 Technical Requirements

- iOS 15.0+
- Xcode 13.0+
- Swift 5.5+

## 📋 Project Structure

SaveN/
├── App/
│   └── SaveNApp.swift
├── Models/
│   └── NotificationModel.swift
├── Views/
│   ├── ContentView.swift
│   ├── NotificationListView.swift
│   ├── NotificationDetailView.swift
│   └── NotificationSettingsView.swift
├── Managers/
│   └── NotificationManager.swift
└── Helpers/
    └── DateFormatter.swift
    
## ⚙️ Installation

1. Clone the repository:

```git clone https://github.com/Speedyfriend67/SaveN.git```

2. Open the project in Xcode:

```cd SaveN
open SaveN.xcodeproj```

3. Configure capabilities:
- Enable "App Groups" capability
- Add group: "group.com.yourapp.saven"
- Enable "Push Notifications" capability

4. Add required entries to Info.plist:

```<key>NSUserNotificationUsageDescription</key>
<string>We need access to notifications to archive them</string>```

5. Build and run the project

## 🚀 Usage

1. Launch the app
2. Grant notification permissions when prompted
3. Notifications will be automatically archived when received
4. View archived notifications in the main list
5. Tap on any notification to view details
6. Use the settings page to manage notification permissions

## ⚠️ Limitations
- Can only archive notifications received while the app is installed
- Cannot access notifications from other apps (iOS limitation)
- Requires notification permissions

## 🔄 Future Updates
- Search functionality
- Categories/Tags for notifications
- Export functionality
- Notification statistics
- Custom notification filters

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1.Fork the project
2.Create your feature branch (git checkout -b feature/AmazingFeature)
3.Commit your changes (git commit -m 'Add some AmazingFeature')
4.Push to the branch (git push origin feature/AmazingFeature)
5.Open a Pull Request

## 👤 Author

Speedyfriend67

Email: speedyfriend433@gmail.com
GitHub: @Speedyfriend67

## 📝 License

This project is licensed under the MIT License - see the LICENSE.md file for details

## 🙏 Acknowledgments

- Apple's SwiftUI framework
- The iOS development community
- All contributors and testers

## 📮 Contact

For any questions or suggestions, please reach out to:

Email: speedyfriend433@gmail.com
GitHub Issues: SaveN Issues

Remember to ⭐️ this repository if you found it helpful!
