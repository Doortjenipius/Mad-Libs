//
//  ResultPage.swift
//  doortjenipius-pset2
//
//  Created by doortje on 19/11/2018.
//  Copyright © 2018 Doortje. All rights reserved.
//

import UIKit

class ResultPage: UIViewController {


    @IBOutlet weak var resultStory: UILabel!
    var answers : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
              
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
