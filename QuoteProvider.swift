//
//  QuoteProvider.swift
//  A10WIDGET
//
//  Created by Sam Bowerman on 1/2/24.
//

import Foundation

struct QuoteProvider {
    static let quotes = [
        "You don't know me son!",
        "Who's going to carry the boats and the logs?",
        "I don't stop when i'm tired, I stop when i'm done."
        // Add more quotes here
    ]

    static func randomQuote() -> String {
        return quotes.randomElement() ?? "Your daily dose of inspiration!"
    }
}
