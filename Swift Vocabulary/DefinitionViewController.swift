//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Kat Milton on 5/28/19.
//  Copyright © 2019 Kat Milton. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    
    var vocabWord: VocabularyWord?
    //{
  //      didSet {
  //          updateViews()
//       }
//    }
    
    @IBOutlet var wordLabel: UILabel!
    
    @IBOutlet var definitionView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        updateViews()
    }
    
    func updateViews() {
        guard let currentWord = vocabWord else {return}
            
                
            wordLabel.text = currentWord.word
            definitionView.text = currentWord.definition
        print(currentWord.definition)
             
    }
        
    
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


