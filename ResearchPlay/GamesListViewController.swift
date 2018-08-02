//
//  GamesListViewController.swift
//  ResearchPlay
//
//  Created by Abdul Basit on 27/07/18.
//  Copyright © 2018 Abdul Basit. All rights reserved.
//


//NOTICE::
//Fitness gives file result
//
//Range of motion gives direct results
//
//Gait and balance gives file results with identifier: accelerometer, deviceMotion
//
//Timed walk gives direct results
//
//Reaction Time gives file results
//
//Tone audiometry gives direct result



import UIKit
import ResearchKit

class GamesListViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,ORKTaskViewControllerDelegate {
    @IBOutlet weak var tableView: UITableView!
    
      let defaults = UserDefaults.standard
    var resultsString:String = ""
    var keyString :String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
    }
    @IBAction func backButtonClicked(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func resetButtonClicked(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Alert!", message: "All your progress will be last. Sure to continue?", preferredStyle: .alert)

        
        // Create the actions
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default) {
            UIAlertAction in
            
            let appDomain = Bundle.main.bundleIdentifier!
            UserDefaults.standard.removePersistentDomain(forName: appDomain)
            self.tableView.reloadData()
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel) {
            UIAlertAction in
            alertController.dismiss(animated: true, completion: nil)
        }
        
        // Add the actions
        alertController.addAction(okAction)
        alertController.addAction(cancelAction)
        
        // Present the controller
        self.present(alertController, animated: true, completion: nil)
        
        
    }
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 14
    }
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! GamesListTableViewCell
        
        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.layer.borderWidth = 0.4
        
    
        switch indexPath.row{
        case 0:
            cell.gameNameLabel.text = "Tower Of Hanoi"
         
            if(self.defaults.bool(forKey: "TOH")){
                cell.gameClearedImageView.image  = UIImage(named: "tick")
            }
            else{
                cell.gameClearedImageView.image  = UIImage(named: "arrow")
            }

        case 1:
            cell.gameNameLabel.text = "Tapping Speed"
            
            if(self.defaults.bool(forKey: "TAP")){
                cell.gameClearedImageView.image  = UIImage(named: "tick")
            }
            else{
                cell.gameClearedImageView.image  = UIImage(named: "arrow")
            }

        case 2:
            cell.gameNameLabel.text = "Spatial Memory"
            
            if(self.defaults.bool(forKey: "SPM")){
                cell.gameClearedImageView.image  = UIImage(named: "tick")
            }
            else{
                cell.gameClearedImageView.image  = UIImage(named: "arrow")
            }

        case 3:
            cell.gameNameLabel.text = "Stroop Test"
            
            if(self.defaults.bool(forKey: "STROOP")){
                cell.gameClearedImageView.image  = UIImage(named: "tick")
            }
            else{
                cell.gameClearedImageView.image  = UIImage(named: "arrow")
            }

        case 4:
            cell.gameNameLabel.text = "Trail Making Test"
            
            if(self.defaults.bool(forKey: "TRAIL")){
                cell.gameClearedImageView.image  = UIImage(named: "tick")
            }
            else{
                cell.gameClearedImageView.image  = UIImage(named: "arrow")
            }

        case 5:
            cell.gameNameLabel.text = "Paced Serial Addition Test"
            
            if(self.defaults.bool(forKey: "PSAT")){
                cell.gameClearedImageView.image  = UIImage(named: "tick")
            }
            else{
                cell.gameClearedImageView.image  = UIImage(named: "arrow")
            }
            
        case 6:
            cell.gameNameLabel.text = "Range Of Motion"
            
            if(self.defaults.bool(forKey: "ROM")){
                cell.gameClearedImageView.image  = UIImage(named: "tick")
            }
            else{
                cell.gameClearedImageView.image  = UIImage(named: "arrow")
            }
            
        case 7:
            cell.gameNameLabel.text = "Gait And Balance"
            
            if(self.defaults.bool(forKey: "GAB")){
                cell.gameClearedImageView.image  = UIImage(named: "tick")
            }
            else{
                cell.gameClearedImageView.image  = UIImage(named: "arrow")
            }
            
        case 8:
            cell.gameNameLabel.text = "Fitness"
            
            if(self.defaults.bool(forKey: "FIT")){
                cell.gameClearedImageView.image  = UIImage(named: "tick")
            }
            else{
                cell.gameClearedImageView.image  = UIImage(named: "arrow")
            }
            
        case 9:
            cell.gameNameLabel.text = "Timed Walk"
            
            if(self.defaults.bool(forKey: "TW")){
                cell.gameClearedImageView.image  = UIImage(named: "tick")
            }
            else{
                cell.gameClearedImageView.image  = UIImage(named: "arrow")
            }
            
        case 10:
            cell.gameNameLabel.text = "Reaction Time"
            
            if(self.defaults.bool(forKey: "RXN")){
                cell.gameClearedImageView.image  = UIImage(named: "tick")
            }
            else{
                cell.gameClearedImageView.image  = UIImage(named: "arrow")
            }
            
        case 11:
            cell.gameNameLabel.text = "Sustained Phonation"
            
            if(self.defaults.bool(forKey: "SP")){
                cell.gameClearedImageView.image  = UIImage(named: "tick")
            }
            else{
                cell.gameClearedImageView.image  = UIImage(named: "arrow")
            }
            
        case 12:
            cell.gameNameLabel.text = "Tone Audiometry"
            
            if(self.defaults.bool(forKey: "TA")){
                cell.gameClearedImageView.image  = UIImage(named: "tick")
            }
            else{
                cell.gameClearedImageView.image  = UIImage(named: "arrow")
            }
            
        case 13:
            cell.gameNameLabel.text = "9-Hole Peg"
            
            if(self.defaults.bool(forKey: "NHP")){
                cell.gameClearedImageView.image  = UIImage(named: "tick")
            }
            else{
                cell.gameClearedImageView.image  = UIImage(named: "arrow")
            }
            
   

        default:
            print("nothing here")
        }
        
        return cell
    }

    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //switch for assigning the particular keystring value...
        switch indexPath.row {
        case 0:
             keyString = "TOHR"
        case 1:
              keyString = "TAPR"
        case 2:
            keyString = "SPMR"
        case 3:
            keyString = "STROOPR"
        case 4:
            keyString = "TRAILR"
        case 5:
            keyString = "PSATR"
        case 6:
            keyString = "ROMR"
        case 7:
            keyString = "GABR"
        case 8:
            keyString = "FITR"
        case 9:
            keyString = "TWR"
        case 10:
            keyString = "RXNR"
        case 11:
            keyString = "SPR"
        case 12:
            keyString = "TAR"
        case 13:
            keyString = "NHPR"
        
        default:
        print("nothing here")
        }
        
        //switch for handling the click result of the rows....
        switch indexPath.row{
        case 0 where !self.defaults.bool(forKey: "TOH") :
            let taskViewController = ORKTaskViewController(task: MyActiveTasks.towerOfHanoiTask, taskRun: nil)
           
            taskViewController.delegate = self
            self.present(taskViewController, animated: true, completion: nil)
            
        case 1 where !self.defaults.bool(forKey: "TAP"):
            let taskViewController = ORKTaskViewController(task: MyActiveTasks.tappingSpeedTask, taskRun: nil)
          
            taskViewController.delegate = self
            self.present(taskViewController, animated: true, completion: nil)
            
        case 2 where !self.defaults.bool(forKey: "SPM"):
            let taskViewController = ORKTaskViewController(task: MyActiveTasks.spatialMemoryTask, taskRun: nil)
            
            taskViewController.delegate = self
            self.present(taskViewController, animated: true, completion: nil)
            
        case 3 where !self.defaults.bool(forKey: "STROOP"):
            let taskViewController = ORKTaskViewController(task: MyActiveTasks.stroopTestTask, taskRun: nil)
            
            taskViewController.delegate = self
            self.present(taskViewController, animated: true, completion: nil)
            
        case 4 where !self.defaults.bool(forKey: "TRAIL"):
            let taskViewController = ORKTaskViewController(task: MyActiveTasks.trailmakingTask, taskRun: nil)
            
            taskViewController.delegate = self
            self.present(taskViewController, animated: true, completion: nil)
            
        case 5 where !self.defaults.bool(forKey: "PSAT"):
            let taskViewController = ORKTaskViewController(task: MyActiveTasks.psatTask, taskRun: nil)
            taskViewController.delegate = self
            
            self.present(taskViewController, animated: true, completion: nil)
            
        case 6 where !self.defaults.bool(forKey: "ROM"):
            let taskViewController = ORKTaskViewController(task: MyActiveTasks.rangeOfMotionTask, taskRun: nil)
            taskViewController.delegate = self
            
            taskViewController.outputDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!

            
            self.present(taskViewController, animated: true, completion: nil)
            
        case 7 where !self.defaults.bool(forKey: "GAB"):
            let taskViewController = ORKTaskViewController(task: MyActiveTasks.gaitAndBalanceTask, taskRun: nil)
            taskViewController.delegate = self
            taskViewController.outputDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!

            self.present(taskViewController, animated: true, completion: nil)
            
        case 8 where !self.defaults.bool(forKey: "FIT"):
            let taskViewController = ORKTaskViewController(task: MyActiveTasks.fitnessTask, taskRun: nil)
            taskViewController.delegate = self
            taskViewController.outputDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!

            self.present(taskViewController, animated: true, completion: nil)
            
        case 9 where !self.defaults.bool(forKey: "TW"):
            let taskViewController = ORKTaskViewController(task: MyActiveTasks.timedWalkTask, taskRun: nil)
            taskViewController.delegate = self
            taskViewController.outputDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!

            self.present(taskViewController, animated: true, completion: nil)
            
        case 10 where !self.defaults.bool(forKey: "RXN"):
            let taskViewController = ORKTaskViewController(task: MyActiveTasks.reactionTimeTask, taskRun: nil)
            taskViewController.delegate = self
            taskViewController.outputDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!

            self.present(taskViewController, animated: true, completion: nil)
            
        case 11: break;
//        case 11 where !self.defaults.bool(forKey: "SP"):
//            let taskViewController = ORKTaskViewController(task: MyActiveTasks.sustainedPhonationTask, taskRun: nil)
//            taskViewController.delegate = self
//
//            self.present(taskViewController, animated: true, completion: nil)
            
        case 12 where !self.defaults.bool(forKey: "TA"):
            let taskViewController = ORKTaskViewController(task: MyActiveTasks.toneAudiometryTask, taskRun: nil)
            taskViewController.delegate = self
            
            self.present(taskViewController, animated: true, completion: nil)
            
        case 13: break;
   //     case 13 where !self.defaults.bool(forKey: "NHP"):
//            let taskViewController = ORKTaskViewController(task: MyActiveTasks.nineHolePegTask, taskRun: nil)
//            taskViewController.delegate = self
//
//            self.present(taskViewController, animated: true, completion: nil)
            
        default:
             let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
            let nextViewController = storyBoard.instantiateViewController(withIdentifier: "ResultsController") as! ResultsViewController
             let nc = UINavigationController(rootViewController: nextViewController)
             nextViewController.keyString = keyString
             nc.modalTransitionStyle = .flipHorizontal
            self.present(nc, animated: true, completion: nil)
        }
        
    }
    
    
    //Handling the results here...
    func taskViewController(_ taskViewController: ORKTaskViewController, didFinishWith reason: ORKTaskViewControllerFinishReason, error: Error?) {
        taskViewController.dismiss(animated: true, completion: nil)
        
        tableView.reloadData()
        
        if(reason == .completed){
            
            if(taskViewController.result.identifier == "TOH"){
                //Handling TOH Test result here....
                if let stepResult = taskViewController.result.stepResult(forStepIdentifier: "towerOfHanoi") {
                    
                    let stepResults = stepResult.results
                    let stepNameResult = stepResults?.first
                    let Result = stepNameResult as? ORKTowerOfHanoiResult
                    
                    let movesInt = Result?.moves?.count
                    let puzzleWasSolved = Result?.puzzleWasSolved
                    let answer = puzzleWasSolved! ?"Yes":"No"
                    
//                    print("no. of moves: \(movesInt!)")
//                    print("was puzzle solved: \(puzzleWasSolved!)")
                    
                    
                    resultsString = "Total Number of Moves:     \(movesInt!)\n\n Puzzle Solved:     \(answer)"
                    defaults.set(resultsString, forKey: "TOHR")
                    
                }
                
                self.defaults.set(true,forKey: "TOH")
            }
            
            
            if(taskViewController.result.identifier == "Tapping"){
                //Handling Tapping Test result here....
                if let stepResult = taskViewController.result.stepResult(forStepIdentifier: "tapping.right") {
                    let stepResults = stepResult.results
                    let stepNameResult = stepResults?.first
                    let Result = stepNameResult as? ORKTappingIntervalResult
                    
                    let buttonRect1 = Result?.buttonRect1
                    let buttonRect2 = Result?.buttonRect2
                    
//                    print("Tapping buttonRect1 is: \(buttonRect1!)")
//                    print("Tapping buttonRect2 is: \(buttonRect2!)")
                    
                    resultsString = "Button 1 reaction:     \(buttonRect1!)\n\nButton 2 reaction:     \(buttonRect2!)"
                    defaults.set(resultsString, forKey: "TAPR")

                }
                
                 self.defaults.set(true,forKey: "TAP")
            }
            
     
            if(taskViewController.result.identifier == "SPMemory"){
                //Handling Spatial memory result here...
                if let stepResult = taskViewController.result.stepResult(forStepIdentifier: "cognitive.memory.spatialspan") {
                    let stepResults = stepResult.results
                    let stepNameResult = stepResults?.first
                    let Result = stepNameResult as? ORKSpatialSpanMemoryResult
                    
                    let gameRecords = Result?.gameRecords
                    let numberOfFailures = Result?.numberOfFailures
                    let numberOfGames = Result?.numberOfGames
                    
                    var i = 0
                    resultsString = ""
                    for sc in gameRecords!{
                        i += 1
                        resultsString += "score in \(i): \(sc.score)\n"
                    }
                    
//                    print("spatial game record is: \(gameRecords!)")
//                    print("spatial no. of failures is: \(numberOfFailures!)")
//                    print("spatial no. of games is: \(numberOfGames!)")
                    
                    
                    resultsString += "\nNumber of games:     \(numberOfGames!)\n\nNumber of failures:     \(numberOfFailures!)"
                    
                    defaults.set(resultsString, forKey: "SPMR")

                }
                
                 self.defaults.set(true,forKey: "SPM")
            }
            
            if(taskViewController.result.identifier == "Stroop"){
                //Handling Stroop Test result here....
                if let stepResult = taskViewController.result.stepResult(forStepIdentifier: "stroop") {
                    let stepResults = stepResult.results
                    let stepNameResult = stepResults?.first
                    let Result = stepNameResult as? ORKStroopResult
                    
                    let colorSelected = Result?.colorSelected
                    let color = Result?.color
                    let startTime = Result?.startTime
                    let endTime = Result?.endTime
//                    let text = Result?.text
//                    print("Stroop color is: \(color!)")
//                    print("Stroop color selected is: \(colorSelected!)")
//                    print("stroop start time is: \(startTime!)")
//                    print("stroop end time is : \(endTime!)")
//                    print("stroop text is: \(text!)")
                    
                    resultsString = "Color:     \(color!)\n\nColor Selected:     \(colorSelected!)\n\nStart Time:     \(startTime!)\n\nEnd Time:     \(endTime!)"
                    
                    defaults.set(resultsString, forKey: "STROOPR")

                    
                }
                 self.defaults.set(true,forKey: "STROOP")
            }
            
            if(taskViewController.result.identifier == "Trail"){
                
                //Handling Trail Making Test result here....
                if let stepResult = taskViewController.result.stepResult(forStepIdentifier: "trailmaking") {
                    let stepResults = stepResult.results
                    let stepNameResult = stepResults?.first
                    let Result = stepNameResult as? ORKTrailmakingResult
                    
                    let numberOfErrors = Result?.numberOfErrors
                    let timeTaken = Result?.taps.last?.timestamp
                    
//                    print("Trail no. of errors is: \(numberOfErrors!)")
//                    print("Trail time taken is: \(timeTaken!)")
                    
                    resultsString = "Time Taken:     \(timeTaken!)\n\nNo. of errors:     \(numberOfErrors!)"
                    
                    defaults.set(resultsString, forKey: "TRAILR")

                }
                 self.defaults.set(true,forKey: "TRAIL")
                
            }
            
            if(taskViewController.result.identifier == "PSAT"){
                //Handling PSAT Test result here....
                if let stepResult = taskViewController.result.stepResult(forStepIdentifier: "psat") {
                    let stepResults = stepResult.results
                    let stepNameResult = stepResults?.first
                    let Result = stepNameResult as? ORKPSATResult
                    
                  //  let initialDigit = Result?.initialDigit
                 //   let interStimulusInterval = Result?.interStimulusInterval
                  //  let stimulusDuration = Result?.stimulusDuration
                    let totalCorrect = Result?.totalCorrect
                    let totalTime = Result?.totalTime
                    
//                    print("PSAT initial digit is: \(initialDigit!)")
//                    print("psat interstimulusinterval is: \(interStimulusInterval!)")
//                    print("psat stimulusDuration is: \(stimulusDuration!)")
//                    print("psat total correct is:   \(totalCorrect!)")
//                    print("psat total time is: \(totalTime!)")
                    
                    resultsString = "Total Time Taken:     \(totalTime!)\n\nTotal correct answers:     \(totalCorrect!)"
                    
                    defaults.set(resultsString, forKey: "PSATR")

                }
                 self.defaults.set(true,forKey: "PSAT")
            }
            
            
            if(taskViewController.result.identifier == "kneeCheck"){
                //Handling Range of motion task Test result here....
                if let stepResult = taskViewController.result.stepResult(forStepIdentifier: "knee.range.of.motion") {
                    let stepResults = stepResult.results
                    let stepNameResult = stepResults?.first
                    let Result = stepNameResult as? ORKRangeOfMotionResult
                    
                    let extended = Result?.extended
                    let flexed = Result?.flexed
                
                    
                    
                      print("Knee extended result is: \(extended!)")
                      print("Knee flexed result is: \(flexed!)")
                    
                    resultsString = "Degrees Extended:     \(extended!)\n\nDegrees Bent:     \(flexed!)"
                    
                    defaults.set(resultsString, forKey: "ROMR")
                }
                self.defaults.set(true,forKey: "ROM")
                
            }
            
            
            
            if(taskViewController.result.identifier == "ShortWalk"){
                //Handling Reaction time task Test result here....
                if let stepResult = taskViewController.result.stepResult(forStepIdentifier: "walking.outbound") {
                    let stepResults = stepResult.results
                    let stepNameResult = stepResults?.first
                    let Result = stepNameResult as? ORKFileResult
                    
                    
                    let results = Result?.fileURL
                    
                      print("Gait result is: \(results!)")
                    
                    resultsString = "Result:     \(results!)"
                    
                    defaults.set(resultsString, forKey: "GABR")
                    
                }
                
                self.defaults.set(true,forKey: "GAB")
                
            }
            
            
            
            
            
            if(taskViewController.result.identifier == "Fitness"){
                //Handling Fitness task Test result here....
                if let stepResult = taskViewController.result.stepResult(forStepIdentifier: "fitness.walk") {
                    let stepResults = stepResult.results
                    let stepNameResult = stepResults?.first
                    let Result = stepNameResult as? ORKFileResult
                    
                    let results = Result?.fileURL
                    
                      print("Fitness result is: \(results!)")
                    
                    resultsString = "Result:     \(results!)"
                    
                    getFileResults(results!)
                    
                    defaults.set(resultsString, forKey: "FITR")
                    
                }
                
                self.defaults.set(true,forKey: "FIT")
                
            }
            
            
            
            if(taskViewController.result.identifier == "TimedWalk"){
                //Handling  timed walk task Test result here....
                if let stepResult = taskViewController.result.stepResult(forStepIdentifier: "timed.walk.trial1") {
                    let stepResults = stepResult.results
                    let stepNameResult = stepResults?.last
                    let Result = stepNameResult as? ORKTimedWalkResult
                    
                    let distance = Result?.distanceInMeters
                    let duration = Result?.duration
                    let timeLimit = Result?.timeLimit
                    
                    print("Timed walk distance is: \(distance!)")
                    print("Timed walk duration is: \(duration!)")
                    print("Timed walk timelimit is: \(timeLimit!)")
                    
                    
                    resultsString = "Distance:     \(distance!)\n\nDuration:     \(duration!)\n\nTime Limit:     \(timeLimit!)"
                    
                    defaults.set(resultsString, forKey: "TWR")
                    
                }
                
                self.defaults.set(true,forKey: "TW")
                
            }
            
            
            
               if(taskViewController.result.identifier == "Reaction"){
             //Handling Reaction time task Test result here....
             if let stepResult = taskViewController.result.stepResult(forStepIdentifier: "reactionTime") {
             let stepResults = stepResult.results
             let stepNameResult = stepResults?.first
             let Result = stepNameResult as? ORKReactionTimeResult
             
         //    let fileResult = Result?.fileResult
             let timestamp = Result?.timestamp
             
           //  print("Reaction File result is: \(fileResult!)")
           //  print("Reaction timestamp is: \(timestamp!)")
                
            resultsString = "Time Taken:     \(timestamp!)"
                
            defaults.set(resultsString, forKey: "RXNR")
             
             }
             
             self.defaults.set(true,forKey: "RXN")
             
             }
            
            if(taskViewController.result.identifier == "Tone"){
                //Handling Tone Audiometry task Test result here....
                if let stepResult = taskViewController.result.stepResult(forStepIdentifier: "tone.audiometry") {
                    let stepResults = stepResult.results
                    let stepNameResult = stepResults?.first
                    let Result = stepNameResult as? ORKToneAudiometryResult
                    
                    let volume = Result?.outputVolume
                    let samples = Result?.samples
                    
                      print("tone vol is: \(volume!)")
                      print(" tone samples is: \(samples!)")
                    
                    resultsString = "Output Volume:     \(volume!)\n\nSamples:     \(samples!)"
                    
                    defaults.set(resultsString, forKey: "TAR")
                    
                }
                
                self.defaults.set(true,forKey: "TA")
                
            }
            
            
            
          /*    if(taskViewController.result.identifier == "9holepeg"){
                //Handling 9 hole peg Test result here....
                if let stepResult = taskViewController.result.stepResult(forStepIdentifier: "towerOfHanoi") {
                 
                 let stepResults = stepResult.results
                 let stepNameResult = stepResults?.first
                 let Result = stepNameResult as? ORKTowerOfHanoiResult
                 
                 let movesInt = Result?.moves?.count
                 let puzzleWasSolved = Result?.puzzleWasSolved
                 
                 
                 print("no. of moves: \(movesInt!)")
                 print("was puzzle solved: \(puzzleWasSolved!)")
                 }
            }*/
        }
    }
    
    //getting fitness results from the file here...
    func getFileResults(_ results:URL){
        print("url is: \(results)")
            do {
                let data = try Data(contentsOf: results, options: .mappedIfSafe)
                let jsonResult = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
                if let jsonResult = jsonResult as? Dictionary<String, AnyObject>,
                    let person = jsonResult["person"] as? [Any] {
                    // do stuff
                }
                    print("result: \(jsonResult)")
            } catch {
                // handle error
            }
        
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
