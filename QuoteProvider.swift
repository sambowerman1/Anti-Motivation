//
//  QuoteProvider.swift
//  A10WIDGET
//
//  Created by Sam Bowerman on 1/2/24.
//

import Foundation

struct QuoteProvider {
    static let quotes = [
        "The only way to do great work is to love what you do. – Steve Jobs",
        "The journey of a thousand miles begins with one step. – Lao Tzu",
        // Add more quotes here
    ]

    static func randomQuote() -> String {
        return quotes.randomElement() ?? "Your daily dose of inspiration!"
    }
}
