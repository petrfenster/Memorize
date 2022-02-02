//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Peter Fenster on 2021-05-11.
//

import SwiftUI

@main
struct MemorizeApp: App {
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(viewModel: EmojiMemoryGame())
        }
    }
}
