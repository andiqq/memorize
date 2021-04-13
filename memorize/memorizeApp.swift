//
//  memorizeApp.swift
//  memorize
//
//  Created by Dr. Andreas Plagens on 20.09.20.
//

import SwiftUI

@main
struct memorizeApp: App {
    var body: some Scene {
        WindowGroup {
            let game = EmojiMemoryGame()
            EmojiMemoryGameView(viewModel: game)
        }
    }
}
