//
//  ChatAppApp.swift
//  ChatApp
//
//  Created by Kyle Gavin on 3/1/22.
//

import SwiftUI

@main
struct ChatAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
            .onReceive(NotificationCenter.default.publisher(for: NSApplication.willUpdateNotification), perform: { _ in
                for window in NSApplication.shared.windows {
                    window.standardWindowButton(.zoomButton)?.isEnabled = false
                }
            })
        }
        .windowStyle(HiddenTitleBarWindowStyle())
    }
}
                    
