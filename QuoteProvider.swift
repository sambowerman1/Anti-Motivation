//
//  QuoteProvider.swift
//  A10WIDGET
//
//  Created by Sam Bowerman on 1/2/24.
//

import Foundation

struct QuoteProvider {
    static let quotes = [
        "Just give up",
        "Stop trying",
        "Stop trying; it's not worth it.",
        "It's never going to happen.",
        "You're not that special.",
        "Dreams are just that – dreams.",
        "Settle for less; it's easier.",
        "You'll never be good enough.",
        "Failure is your only option.",
        "Why try when you can just fail?",
        "Dream small and avoid disappointment.",
        "Mediocrity: Aim for it.",
        "Why aim for the stars when you can stay on the ground?",
        "Failures always outnumber successes.",
        "Success is just failure that hasn’t happened yet.",
        "Don’t follow your dreams, they’re probably wrong.",
        "Dreams are for sleepers.",
        "You can’t lose if you don’t play.",
        "There’s always a way to lower the bar.",
        "Every silver lining has a cloud.",
        "Tomorrow is another day to mess up.",
        "You are unique, just like everyone else.",
        "Avoid taking risks to avoid disappointment.",
        "Expect the worst, you'll never be disappointed.",
        "Quit while you're behind.",
        "If at first you don't succeed, give up immediately.",
        "Don't be yourself; be someone a little less ambitious.",
        "Happiness is just sadness that hasn't happened yet.",
        "Hard work rarely pays off.",
        "Stay in bed. Dreams are better than reality.",
        "Underachieve. It's less work.",
        "Don't set yourself up for failure by trying.",
        "Avoid making history. Stay anonymous.",
        "If you don't expect anything, you'll never be let down.",
        "Procrastinate now, panic later.",
        "Tomorrow: The best time to do everything you planned for today.",
        "The glass isn't half empty, it's just twice as large as it needs to be.",
        "Life is a rollercoaster, mostly downhill.",
        "Why be a hard worker when you can hardly work?",
        "You can't fail if you never try.",
        "The sky's the limit, but your ceiling is much lower.",
        "If at first you don't succeed, redefine success.",
        "Failure is not an option. It's a certainty.",
        "Set low expectations to avoid working towards them.",
        "Overcome obstacles by avoiding them.",
        "Life is like a box of chocolates, mostly disappointing.",
        "If all else fails, lower your standards."
        
        // Add more quotes here
    ]

    static func randomQuote() -> String {
        return quotes.randomElement() ?? "Your daily dose of inspiration!"
    }
}
