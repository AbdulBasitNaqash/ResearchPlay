//
//  ViewController.swift
//  ResearchPlay
//
//  Created by Abdul Basit on 26/07/18.
//  Copyright © 2018 Abdul Basit. All rights reserved.
//

import UIKit
import ResearchKit

class ViewController: UIViewController {
  
    

   
   
    @IBOutlet weak var playButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    @IBAction func playButtonClicked(_ sender: Any) {
        
        
     /*   let alert = UIAlertController(title: "Games", message: "Please Choose A Game", preferredStyle: .actionSheet)
        
        alert.addAction(UIAlertAction(title: "Tower Of Hanoi", style: .default, handler: { (action) in
            let taskViewController = ORKTaskViewController(task: MyActiveTasks.towerOfHanoiTask, taskRun: nil)
            taskViewController.delegate = self
            self.present(taskViewController, animated: true, completion: nil)
        }))
        
        
        alert.addAction(UIAlertAction(title: "Tapping Speed", style: .default, handler: { (action) in
            let taskViewController = ORKTaskViewController(task: MyActiveTasks.tappingSpeedTask, taskRun: nil)
            taskViewController.delegate = self
            self.present(taskViewController, animated: true, completion: nil)
        }))
        
        alert.addAction(UIAlertAction(title: "Spatial Memory", style: .default, handler: { (action) in
            let taskViewController = ORKTaskViewController(task: MyActiveTasks.spatialMemoryTask, taskRun: nil)
            taskViewController.delegate = self
            self.present(taskViewController, animated: true, completion: nil)
        }))
        
        alert.addAction(UIAlertAction(title: "Stroop Test", style: .default, handler: { (action) in
            let taskViewController = ORKTaskViewController(task: MyActiveTasks.stroopTestTask, taskRun: nil)
            taskViewController.delegate = self
            self.present(taskViewController, animated: true, completion: nil)
        }))
        
        alert.addAction(UIAlertAction(title: "Trail Making Test", style: .default, handler: { (action) in
            let taskViewController = ORKTaskViewController(task: MyActiveTasks.trailmakingTask, taskRun: nil)
            taskViewController.delegate = self
            self.present(taskViewController, animated: true, completion: nil)
        }))
        
        alert.addAction(UIAlertAction(title: "Paced Serial Addition Test", style: .default, handler: { (action) in
            let taskViewController = ORKTaskViewController(task: MyActiveTasks.psatTask, taskRun: nil)
            taskViewController.delegate = self
            self.present(taskViewController, animated: true, completion: nil)
        }))
        
      /*  alert.addAction(UIAlertAction(title: "Reaction Time", style: .default, handler: { (action) in
            let taskViewController = ORKTaskViewController(task: MyActiveTasks.reactionTimeTask, taskRun: nil)
            taskViewController.delegate = self
            self.present(taskViewController, animated: true, completion: nil)
        }))
        
        alert.addAction(UIAlertAction(title: "9-Hole Peg", style: .default, handler: { (action) in
            let taskViewController = ORKTaskViewController(task: MyActiveTasks.holePegTask, taskRun: nil)
            taskViewController.delegate = self
            self.present(taskViewController, animated: true, completion: nil)
        }))*/
        self.present(alert, animated: true)*/
        
            let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let gamesListViewController =  storyBoard.instantiateViewController(withIdentifier: "GamesController") as! GamesListViewController
        gamesListViewController.modalTransitionStyle = .flipHorizontal
       self.present(gamesListViewController, animated: true, completion: nil)
    }
    
    
    
    
 

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

