//
//  NoteController.swift
//  Notes
//
//  Created by RYAN GREENBURG on 3/26/21.
//

import Foundation

class NoteController {
    static let shared = NoteController()
    
    var notes: [Note] = []
    
    func newNote(with title: String, body: String) {
        let newNote = Note(title: title, body: body)
        notes.append(newNote)
    }
    
    func update(note: Note, with title: String, body: String) {
        note.title = title
        note.body = body
    }
    
    func fetchNotes() {
        
    }
    
    func delete(note: Note) {
        guard let index = notes.firstIndex(of: note) else { return }
        notes.remove(at: index)
    }
}
