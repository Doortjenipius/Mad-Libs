//
//  SubmitWords.swift
//  doortjenipius-pset2
//
//  Created by doortje on 19/11/2018.
//  Copyright © 2018 Doortje. All rights reserved.
//

import UIKit

class SubmitWordsViewController: UIViewController {
    
    // Outlets of the buttons and labels.
    @IBOutlet weak var FillInWords: UILabel!
    @IBOutlet weak var inputText: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    
    var story: Story!
    var name: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Radius of the button.
        submitButton.layer.cornerRadius = 4
        
        // Path loads the correct story.
        let storyPath = Bundle.main.path(forResource: name, ofType: "txt")
        // Forms a string of the story.
        let text = try! String(contentsOfFile: storyPath!, encoding: .utf8)
        story = Story(withText: text)
        // The placeholder will be filled in the textfield.
        inputText.placeholder = story.nextPlaceholder
    }
    
    @IBAction func submitAnswer(_ sender: Any) {
        // Placeholder is filled in if there's more than 1 placeholder to fill in.
        if story.remainingPlaceholders > 1 {
            // inputText kan worden ingevuld en wordt opgeslagen.
            story.fillInPlaceholder(word: inputText.text!)
            inputText.text = ""
            inputText.placeholder = story.nextPlaceholder
        }
        else {
            // placeholder is saved
            story.fillInPlaceholder(word: inputText.text!)
            // segue is called.
            performSegue(withIdentifier: "Answer", sender: sender)
        }
        
    }
    // Segue links the correct answers to the ResultPageViewController.
    override func prepare(for segue: UIStoryboardSegue, sender:
        Any?) {
        if segue.identifier == "Answer" {
            let result_page = segue.destination as! ResultPageViewController
            result_page.answers = story.normalText
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
}
