//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Kat Milton on 5/28/19.
//  Copyright © 2019 Kat Milton. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    var vocabController = VocabularyController(vocabWords: [VocabularyWord(word: "var", definition: "A variable is a value that can change, depending on conditions or on information passed to the program."),
        VocabularyWord(word: "Struct", definition: "A struct is a custom data type which provides storage of data using properties with extended functionality using methods."),
        VocabularyWord(word: "Class", definition: "A piece of code that describes the behavior and properties common to any particular type of object, essentially providing a blueprint for the object.")] )
    

    
    

    override func viewDidLoad() {
        super.viewDidLoad()

      

    // MARK: - Table view data source
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vocabController.vocabWords.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)

        cell.textLabel?.text = vocabController.vocabWords[indexPath.row].word

        return cell
    }
 

   

    
    // MARK: - Navigation

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow,
            let definitionVC = segue.destination as? DefinitionViewController else {return}
        
        let vocabWord = vocabController.vocabWords[indexPath.row]
        
        definitionVC.vocabWord = vocabWord
        
    }
 

}
