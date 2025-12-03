//
//  GameTVApp.swift
//  GameTV
//
//  Created by Marta Bella on 19/11/25.
//

import SwiftUI

@main
struct GameTVApp: App {
    @State var vm = GameStore()
    var body: some Scene {
        WindowGroup {
            ContentView().environment(vm)
        }
    }
}
