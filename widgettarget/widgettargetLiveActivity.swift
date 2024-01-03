//
//  widgettargetLiveActivity.swift
//  widgettarget
//
//  Created by Sam Bowerman on 12/24/23.
//

import ActivityKit
import WidgetKit
import SwiftUI

struct widgettargetAttributes: ActivityAttributes {
    public struct ContentState: Codable, Hashable {
        // Dynamic stateful properties about your activity go here!
        var emoji: String
    }

    // Fixed non-changing properties about your activity go here!
    var name: String
}

struct widgettargetLiveActivity: Widget {
    var body: some WidgetConfiguration {
        ActivityConfiguration(for: widgettargetAttributes.self) { context in
            // Lock screen/banner UI goes here
            VStack {
                Text("Hello \(context.state.emoji)")
            }
            .activityBackgroundTint(Color.cyan)
            .activitySystemActionForegroundColor(Color.black)

        } dynamicIsland: { context in
            DynamicIsland {
                // Expanded UI goes here.  Compose the expanded UI through
                // various regions, like leading/trailing/center/bottom
                DynamicIslandExpandedRegion(.leading) {
                    Text("Leading")
                }
                DynamicIslandExpandedRegion(.trailing) {
                    Text("Trailing")
                }
                DynamicIslandExpandedRegion(.bottom) {
                    Text("Bottom \(context.state.emoji)")
                    // more content
                }
            } compactLeading: {
                Text("L")
            } compactTrailing: {
                Text("T \(context.state.emoji)")
            } minimal: {
                Text(context.state.emoji)
            }
            .widgetURL(URL(string: "http://www.apple.com"))
            .keylineTint(Color.red)
        }
    }
}

extension widgettargetAttributes {
    fileprivate static var preview: widgettargetAttributes {
        widgettargetAttributes(name: "World")
    }
}

extension widgettargetAttributes.ContentState {
    fileprivate static var smiley: widgettargetAttributes.ContentState {
        widgettargetAttributes.ContentState(emoji: "😀")
     }
     
     fileprivate static var starEyes: widgettargetAttributes.ContentState {
         widgettargetAttributes.ContentState(emoji: "🤩")
     }
}

#Preview("Notification", as: .content, using: widgettargetAttributes.preview) {
   widgettargetLiveActivity()
} contentStates: {
    widgettargetAttributes.ContentState.smiley
    widgettargetAttributes.ContentState.starEyes
}
