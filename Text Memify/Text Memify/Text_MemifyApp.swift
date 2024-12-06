//
//  Text_MemifyApp.swift
//  Text Memify
//
//  Created by Harry Dinh on 2024-12-06.
//

import SwiftUI

@main
struct Text_MemifyApp: App {
    var body: some Scene {
        MenuBarExtra("Text Memify", systemImage: "character.cursor.ibeam") {
            ContentView()
        }
        .menuBarExtraStyle(.window)
    }
}
