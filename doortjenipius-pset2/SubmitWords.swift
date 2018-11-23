//
//  SubmitWords.swift
//  doortjenipius-pset2
//
//  Created by doortje on 19/11/2018.
//  Copyright © 2018 Doortje. All rights reserved.
//

import UIKit

class SubmitWords: UIViewController {

    
    @IBOutlet weak var FillInWords: UILabel!
    @IBOutlet weak var inputText: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    
    var story: Story!
    var name: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        submitButton.layer.cornerRadius = 4

        // Do any additional setup after loading the view.
        let storyPath = Bundle.main.path(forResource: name, ofType: "txt")
        let text = try! String(contentsOfFile: storyPath!, encoding: .utf8)
        story = Story(withText: text)
        inputText.placeholder = story.nextPlaceholder
    }
    
    @IBAction func submitAnswer(_ sender: Any) {
        if story.remainingPlaceholders > 1 {
            story.fillInPlaceholder(word: inputText.text!)
            inputText.text = ""
            inputText.placeholder = story.nextPlaceholder
        }
        else {
            story.fillInPlaceholder(word: inputText.text!)
            performSegue(withIdentifier: "Answer", sender: sender)
        }

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender:
        Any?) {
        if segue.identifier == "Answer" {
            let result_page = segue.destination as! ResultPage
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
