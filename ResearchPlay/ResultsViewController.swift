//
//  ResultsViewController.swift
//  ResearchPlay
//
//  Created by Abdul Basit on 30/07/18.
//  Copyright © 2018 Abdul Basit. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    let defaults = UserDefaults.standard

    
    @IBOutlet weak var resultsTextView: UITextView!
    var keyString:String =  ""
    
    override func viewDidAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: true)

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print ("results: \(keyString)")
        resultsTextView.text  = defaults.string(forKey: keyString)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  
    @IBAction func backButtonClicked(_ sender: Any) {
        dismiss(animated: true, completion: nil)

    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
