//
//  GamePage.swift
//  doortjenipius-pset2
//
//  Created by doortje on 19/11/2018.
//  Copyright © 2018 Doortje. All rights reserved.
//

import UIKit

class GamePageViewController: UIViewController {
    
    // Name of story saved in this string.
    var name: String!
    
    // Buttons to choose the name of the story.
    @IBAction func simpleButton(_ sender: Any) {
        name = "madlib0_simple"
        performSegue(withIdentifier: "Submit", sender: sender)
    }
    @IBAction func tarzanButton(_ sender: Any) {
        name = "madlib1_tarzan"
        performSegue(withIdentifier: "Submit", sender: sender)
    }
    @IBAction func danceButton(_ sender: Any) {
        name = "madlib4_dance"
        performSegue(withIdentifier: "Submit", sender: sender)
    }
    @IBAction func clothesButton(_ sender: Any) {
        name = "madlib3_clothes"
        performSegue(withIdentifier: "Submit", sender: sender)
    }
    @IBAction func universityButton(_ sender: Any) {
        name = "madlib2_university"
        performSegue(withIdentifier: "Submit", sender: sender)
    }
    
    // Segue links the correct textfile name to the SubmitWordsViewcontroller.
    override func prepare(for segue: UIStoryboardSegue, sender:
        Any?) {
        if segue.identifier == "Submit" {
            let words = segue.destination as! SubmitWordsViewController
            words.name = name
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
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


