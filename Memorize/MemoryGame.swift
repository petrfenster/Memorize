//
//  MemoryGame.swift
//  Memorize
//
//  Created by Peter Fenster on 2021-05-24.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    
    func choose (card: Card) {
        print ("card chosen: \(card)")
        let chosenIndex: Int = self.index(of: card)
        self.cards[chosenIndex].isFaceUp = !self.cards[chosenIndex].isFaceUp
        
    }
    
    func index(of: Card) -> Int {
        for index in 0..<self.cards.count {
            if self.cards[index].id == of.id {
                return index
            }
        }
        
    }
    
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(content: content, id: pairIndex*2))
            cards.append(Card(content: content, id: pairIndex*2+1))
            
        }
        
    }
    
    struct Card: Identifiable {
        var isFaceUp: Bool = true
        var isMatched: Bool = false
        var content: CardContent
        var id: Int
    }
}
