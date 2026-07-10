import SwiftUI

struct CcbarApp: App {
    @StateObject private var store = UsageStore()

    var body: some Scene {
        MenuBarExtra {
            MenuContent(store: store)
        } label: {
            // Plain text so it matches the system menu bar font and size (like the
            // clock) and stays monochrome. Colour lives in the dropdown rows.
            Text("</> \(store.barLabel)")
        }
        .menuBarExtraStyle(.window)
    }
}
