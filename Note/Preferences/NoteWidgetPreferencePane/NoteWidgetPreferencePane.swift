//
//  NoteWidgetPreferencePane.swift
//  Note
//
//  Created by Zach Merrill on 2021-06-06.
//

import Cocoa
import Defaults
import PockKit

class NoteWidgetPreferencePane: NSViewController, NSTextFieldDelegate, PKWidgetPreference {
    static var nibName: NSNib.Name = "NoteWidgetPreferencePane"
    
    // UI
    @IBOutlet weak var noteTextField: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.superview?.wantsLayer = true
        self.view.wantsLayer = true
        self.noteTextField.delegate = self
        self.noteTextField.stringValue = Defaults[.noteTextField]
    }
    
    func controlTextDidChange(_ obj: Notification) {
        // Get the unsanitized string value
        Defaults[.noteTextField] = noteTextField.stringValue
        // Broadcast that we need to reload the widget
        NSWorkspace.shared.notificationCenter.post(name: .shouldReloadNoteWidget, object: nil)
    }
}
