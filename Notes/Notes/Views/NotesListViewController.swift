//
//  NotesListViewController.swift
//  Notes
//
//  Created by RYAN GREENBURG on 3/26/21.
//

import UIKit

class NotesListViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toNoteDetailsVC" {
            if let noteDetailVC = segue.destination as? NoteDetailViewController,
               let indexPath = tableView.indexPathForSelectedRow {
                let noteToSend = NoteController.shared.notes[indexPath.row]
                noteDetailVC.note = noteToSend
            }
        }
    }
}

extension NotesListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return NoteController.shared.notes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NoteCell")
        
        let note = NoteController.shared.notes[indexPath.row]
        cell?.textLabel?.text = note.title
        cell?.detailTextLabel?.text = note.body
        
        return cell ?? UITableViewCell()
    }
}
