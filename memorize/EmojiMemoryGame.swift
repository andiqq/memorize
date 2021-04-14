//
//  EmojiMemoryGame.swift
//  memorize
//
//  Created by Dr. Andreas Plagens on 20.09.20.
//
//  ViewModel

import SwiftUI

class EmojiMemoryGame: ObservableObject
{
    @Published private var model: MemoryGame<String> = createMemoryGame()
    
    private static func createMemoryGame() -> MemoryGame<String>
    {
        let emojis: Array<String> = ["👻","🎃","🕷"]
        
        let memoryGame = MemoryGame<String>(numberOfPairsOfCards: emojis.count)
        {
            pairIndex in emojis[pairIndex]
        }
        
        return memoryGame
    }
            
    // MARK: - Access to the Model
    
    var cards: Array<MemoryGame<String>.Card>
    {
        model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card)
    {
        model.choose(card: card)
    }
}

// Preview

struct EmojiMemoryGame_Previews: PreviewProvider
{
    static var previews: some View
    {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
