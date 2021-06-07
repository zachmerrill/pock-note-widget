//
//  NoteWidget.swift
//  Note
//
//  Created by Zach Merrill on 2021-06-06.
//

import Foundation
import PockKit
import Defaults

class NoteWidget: PKWidget {
    // Pock
    var identifier: NSTouchBarItem.Identifier = NSTouchBarItem.Identifier(rawValue: "NoteWidget")
    var customizationLabel: String = "Note"
    var view: NSView!
    
    // UI
    private var noteLabel: NSTextField!
    
    required init() {
        self.initNoteLabel()
        self.view = noteLabel
    }
    
    func viewDidAppear() {
        // Listen for a reload broadcast
        // We'll use it to update the text
        NSWorkspace.shared.notificationCenter.addObserver(forName: .shouldReloadNoteWidget, object: nil, queue: .main, using: { [weak self] _ in
            self?.noteLabel.stringValue = (self?.getNoteStringValue())!
        })
    }
    
    func viewWillDisappear() {
        NSWorkspace.shared.notificationCenter.removeObserver(self)
    }
    
    func initNoteLabel() {
        if noteLabel == nil {
            noteLabel = NSTextField()
            noteLabel.frame = CGRect(origin: .zero, size: CGSize(width: 100, height: 44))
            noteLabel.font = NSFont.monospacedDigitSystemFont(ofSize: 13, weight: .medium)
            noteLabel.backgroundColor = .clear
            noteLabel.isBezeled = false
            noteLabel.isEditable = false
            noteLabel.stringValue = self.getNoteStringValue()
            noteLabel.sizeToFit()
        }
    }
    
    func getNoteStringValue() -> String {
        var note = Defaults[.noteTextField]
        // Check for empty
        // The widget is impossible to select if the field is empty
        if note.isEmpty {
            note = "Write a note!"
        }
        return note
    }
}
