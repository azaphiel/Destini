//
//  ViewController.swift
//  Destini
//
//  Created by Özkan Adar on 20/05/2020.
//  Copyright © 2020 Özkan Adar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var contextLabel: UILabel!
    @IBOutlet weak var choice1Label: UIButton!
    @IBOutlet weak var choice2Label: UIButton!
    var storyBrain = StoryBrain()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contextLabel.text = storyBrain.story[0].title
        choice1Label.setTitle(storyBrain.story[0].choice1, for: .normal)
        choice2Label.setTitle(storyBrain.story[0].choice2, for: .normal)
        
    }
    
    @IBAction func pressedButton(_ sender: UIButton) {
        var choiceMade = sender.currentTitle!
        updateUI(choiceMade)
        
        
    }
    
    
    func updateUI(_ choiceMade: String) {
        contextLabel.text = storyBrain.story[storyBrain.nextStory(choiceMade)].title
        choice1Label.setTitle(storyBrain.story[storyBrain.nextButton()].choice1, for: .normal)
        choice2Label.setTitle(storyBrain.story[storyBrain.nextButton()].choice2, for: .normal)
        
    }
    
    
}
