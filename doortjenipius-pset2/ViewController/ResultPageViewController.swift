//
//  ResultPage.swift
//  doortjenipius-pset2
//
//  Created by doortje on 19/11/2018.
//  Copyright © 2018 Doortje. All rights reserved.
//

import UIKit

class ResultPageViewController: UIViewController {
    
    // Outlet of the label.
    @IBOutlet weak var resultStory: UILabel!
    // Answers are saved in this string.
    var answers : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // The story, inclusive correct answers are shown in the resultStory label. 
        resultStory.text = answers
        // Do any additional setup after loading the view.
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
