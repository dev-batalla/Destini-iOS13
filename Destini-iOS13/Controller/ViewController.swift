//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var story = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        if sender.tag == 0 {
            story.queueNextStory(for: 1)
            updateUI()
        } else {
            story.queueNextStory(for: 2)
            updateUI()
        }
    }
    
    func updateUI() {
        let current = story.getCurrentStory()
        storyLabel.text = current.title
        choice1Button.setTitle(current.choice1, for: .normal)
        choice2Button.setTitle(current.choice2, for: .normal)
    }
    
}

