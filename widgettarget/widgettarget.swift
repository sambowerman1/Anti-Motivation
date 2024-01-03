//
//  widgettarget.swift
//  widgettarget
//
//  Created by Sam Bowerman on 12/24/23.
//

import WidgetKit
import SwiftUI

// Assuming QuoteProvider.swift is already created with the randomQuote function
struct Provider: TimelineProvider {
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date(), quote: "Loading quote...")
    }

    func getSnapshot(in context: Context, completion: @escaping (SimpleEntry) -> ()) {
        let entry = SimpleEntry(date: Date(), quote: "Snapshot quote")
        completion(entry)
    }

    func getTimeline(in context: Context, completion: @escaping (Timeline<SimpleEntry>) -> ()) {
        var entries: [SimpleEntry] = []

        // Generate a timeline for the next seven days with a new quote each day
        let currentDate = Date()
        for dayOffset in 0..<7 {
            let entryDate = Calendar.current.date(byAdding: .day, value: dayOffset, to: currentDate)!
            let entry = SimpleEntry(date: entryDate, quote: QuoteProvider.randomQuote())
            entries.append(entry)
        }

        let timeline = Timeline(entries: entries, policy: .after(Calendar.current.date(byAdding: .day, value: 7, to: currentDate)!))
        completion(timeline)
    }
}

struct SimpleEntry: TimelineEntry {
    let date: Date
    let quote: String
}

struct WidgetEntryView : View {
    var entry: Provider.Entry

    var body: some View {
        Text(entry.quote)
            // You can style this text view as you like
    }
}

struct widgettarget: Widget {
    let kind: String = "widgettarget"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Provider()) { entry in
            WidgetEntryView(entry: entry)
        }
        .configurationDisplayName("Daily Quote")
        .description("Displays a different quote each day.")
    }
}

// Update the preview as needed
struct widgettarget_Previews: PreviewProvider {
    static var previews: some View {
        WidgetEntryView(entry: SimpleEntry(date: Date(), quote: "Preview quote"))
            .previewContext(WidgetPreviewContext(family: .systemSmall))
    }
}

