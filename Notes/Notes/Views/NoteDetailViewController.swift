//
//  NoteDetailViewController.swift
//  Notes
//
//  Created by RYAN GREENBURG on 4/28/21.
//

import UIKit

class NoteDetailViewController: UIViewController {
    
    @IBOutlet weak var timestampLabel: UILabel!
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var bodyTextView: UITextView!
    
    var note: Note? {
        didSet {
            updateViews()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timestampLabel.text = Date().stringValue(style: .full)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        guard let title = titleTextField.text, !title.isEmpty else { return }
        if let note = note {
            NoteController.shared.update(note: note, with: title, body: bodyTextView.text ?? "")
        } else {
            NoteController.shared.createNote(with: title, body: bodyTextView.text ?? "")
        }
    }
    
    func updateViews() {
        timestampLabel.text = note?.timestamp.stringValue(style: .full)
        titleTextField.text = note?.title
        bodyTextView.text = note?.body
    }
}
