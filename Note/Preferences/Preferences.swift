//
//  Preferences.swift
//  Note
//
//  Created by Zach Merrill on 2021-06-06.
//

import Defaults

extension NSNotification.Name {
    static let shouldReloadNoteWidget = NSNotification.Name("shouldReloadNoteWidget")
}

extension Defaults.Keys {
    static let noteTextField = Defaults.Key<String>("noteTextField", default: "Write a note!")
}
